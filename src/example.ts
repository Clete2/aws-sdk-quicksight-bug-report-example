import { QuickSightClient } from "@aws-sdk/client-quicksight"

export default async () => {
  return new QuickSightClient({})
}