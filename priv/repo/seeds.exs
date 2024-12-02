# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     BtimeTestBack.Repo.insert!(%BtimeTestBack.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

import Ecto.Query
alias BtimeTestBack.{Repo, Tasks}

Repo.insert!(
  %BtimeTestBack.Tasks{
    name: "Task 1",
    priority: :baixa,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Maringá",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 2",
    priority: :baixa,
    description:
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Manaus",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 3",
    priority: :baixa,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Fortaleza",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 4",
    priority: :baixa,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Natal",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 5",
    priority: :baixa,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Belo Horizonte",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 6",
    priority: :baixa,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Betim",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 7",
    priority: :alta,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Sete Lagoas",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 8",
    priority: :alta,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Vila Velha",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 9",
    priority: :alta,
    description:
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "banana",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :scheduled
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 10",
    priority: :alta,
    description:
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Nova Iguaçu",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 11",
    priority: :alta,
    description:
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Queimados",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 12",
    priority: :alta,
    description:
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Rio de Janeiro",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 13",
    priority: :critica,
    description:
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Curitiba",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 14",
    priority: :critica,
    description:
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Londrina",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 15",
    priority: :critica,
    description:
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Maringá",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 16",
    priority: :critica,
    description:
      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of ",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Maringá",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 17",
    priority: :critica,
    description:
      "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from ",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Alegrete",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 18",
    priority: :critica,
    description:
      "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from ",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Alegrete",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)

Repo.insert!(
  %Tasks{
    name: "Task 19",
    priority: :critica,
    description:
      "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from ",
    execution_date: NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second),
    execution_place: "Alegrete",
    files:
      "{ \"img\": [  \"https://raw.githubusercontent.com/williamthewill/btime-test-back-end/refs/heads/master/image-1.png\" ]}",
    status: :executed
  },
  on_conflict: :nothing
)
