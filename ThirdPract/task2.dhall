#!./bin/dhall-to-json --file

let groups: List Text = [ "1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24" ]

let subject : Text = "Конфигурационное управление"

let List/map =
      https://prelude.dhall-lang.org/v11.1.0/List/map sha256:dd845ffb4568d40327f2a817eb42d1c6138b929ca758d50bc33112ef3c885680

let generate-test-name =
      \(prefix : Text) ->
        List/map Text Text (\(suffixes : Text) -> "${prefix}${suffixes}")

let generate-test-suite =
      \(prefixes : List Text) ->
      \(suffixes : List Text) ->
        let flatten-list-text = https://prelude.dhall-lang.org/List/concat Text

        in  flatten-list-text
              ( List/map
                  Text
                  (List Text)
                  (\(prefix : Text) -> generate-test-name prefix suffixes)
                  prefixes
              )

let makeStudent = 
		\(age : Natural) ->
		\(group : Text) ->
		\(name : Text) ->
              let age   = age
              let group = "${group}"
              let name  = "${name}"
			  in  { age = age
				  , group = group
				  , name = name
				  }
let makeUser = \(user : Text) ->
              let home       = "/home/${user}"
              let privateKey = "${home}/.ssh/id_ed25519"
              let publicKey  = "${privateKey}.pub"
              in  { home = home
                  , privateKey = privateKey
                  , publicKey = publicKey
                  }


in  {
	groups = generate-test-suite 
		(generate-test-suite [ "ИКБО-" ] groups)
		[ "-20" ]
	, students = [
		makeStudent 19 "ИКБО-4-20" "Иванов И.И."
		, makeStudent 18 "ИКБО-5-20" "Петров П.П."
		, makeStudent 18 "ИКБО-5-20" "Сидоров С.С."
		, makeStudent 20 "ИКБО-31-20" "Лебедев Л.Л." 
		]
	, subject = subject
	}
