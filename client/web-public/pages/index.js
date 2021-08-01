import Link from 'next/link'

export default function Home() {
  return (
    <div>
      Hello World!
      <ul>
        <li>
          <Link href="/auth">
            Auth Route
          </Link>
        </li>
      </ul>
    </div>
  )
}
