using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
public class Wq{
    private static StringBuilder outstr;
public static string OutString(string instr, int WordCount, bool Prolong)
    {
        byte[] mybyte = System.Text.Encoding.Default.GetBytes(instr);
        if (mybyte.Length > WordCount)
        {
            outstr = new StringBuilder();
            for (int i = 0; i < instr.Length; i++)
            {
                byte[] tempByte = System.Text.Encoding.Default.GetBytes(outstr.ToString());
                if (tempByte.Length < WordCount * 2)
                {
                    outstr.Append(instr.Substring(i, 1));
                }
                else
                {
                    if (Prolong)
                    {
                        outstr.Append("...");
                    }
                    break;
                }
            }
            return outstr.ToString();
        }
        else
        {
            return instr;
        }
    }
/// <summary>
/// 格式化输出的字符串,超出的部分使用....显示
/// </summary>
/// <param name="instr">需要格式化的字符串</param>
/// <param name="count">截取多少位数</param>
/// <returns></returns>
public static string Out(string instr, int count)
{
    return OutString(instr, count, true);//要格式化的字符串及要保留的字数
}
/// <summary>
/// 高亮输出字符串,True显示红色,Blue显示兰色。
/// </summary>
/// <param name="instr">需要格式化的字符串</param>
/// <param name="light">是否需要加高亮显示</param>
/// <returns></returns>
public static string HighLight(string instr, bool light)
{
    if (light)
    {
        instr = "<span style='color:red'>" + instr + "</span>";//要加亮的文本，Red
    }
    else
    {
        instr = "<span style='color:blue'>" + instr + "</span>";//要加亮的文本，Blue
    }
    return instr;
}
}