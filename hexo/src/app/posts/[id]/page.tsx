import {getPostData, getAllPostIds} from "@/lib/blog";
import Link from "next/link";

export async function generateStaticParams() {
  const paths = getAllPostIds();
  return paths;
}

export default async function Post({params}: {params: {id: string}}) {
  const post = await getPostData(params.id);

  return (
    <div className='min-h-screen bg-gray-50'>
      <main className='container mx-auto px-4 py-8'>
        <article className='prose lg:prose-xl mx-auto bg-white rounded-lg shadow-sm p-8'>
          <h1 className='text-4xl font-bold mb-4'>{post.title}</h1>
          <div className='text-gray-600 mb-8 border-b pb-4'>
            <time dateTime={post.date}>{post.date}</time>
          </div>
          <div className='mt-8' dangerouslySetInnerHTML={{__html: post.content}} />
          <div className='mt-12 pt-8 border-t'>
            <Link href='/' className='text-blue-600 hover:text-blue-800 font-medium'>
              ← ブログ一覧に戻る
            </Link>
          </div>
        </article>
      </main>
    </div>
  );
}
