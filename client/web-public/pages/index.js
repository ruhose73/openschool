import Link from 'next/link'

export default function Home() {
  return (
    <div>
      Openschool
      <ul>
        <li>
          <Link href="/auth">
            Auth Route -- страница аутентификации
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link href="/admin">
            web-admin
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link href="/processes">
            web-processes
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link href="/api/content">
            api-content
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link href="api/extra">
            api-extra
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link href="api/stuff">
            api-stuff
          </Link>
        </li>
      </ul>

      <ul>
        <li>
          <Link href="api/users">
            api-users
          </Link>
        </li>
      </ul>

    </div>

    
  )
}
