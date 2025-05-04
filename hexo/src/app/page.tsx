import Link from "next/link";
import {getSortedPostsData} from "@/lib/blog";

export default async function Home() {
  const posts = getSortedPostsData();

  return (
    <main className='container mx-auto px-4 py-8'>
      <h1 className='text-4xl font-bold mb-8'>ブログ記事一覧</h1>
      <div className='space-y-6'>
        {posts.map((post) => (
          <article key={post.id} className='border rounded-lg p-6 shadow-sm'>
            <Link href={`/posts/${post.id}`}>
              <h2 className='text-2xl font-semibold mb-2 hover:text-blue-600'>{post.title}</h2>
            </Link>
            <div className='text-gray-600 mb-4'>{post.date}</div>
            <div className='prose max-w-none'>{post.content.length > 200 ? `${post.content.substring(0, 200)}...` : post.content}</div>
          </article>
        ))}
      </div>
    </main>
  );
}
