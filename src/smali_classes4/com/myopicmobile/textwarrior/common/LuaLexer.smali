.class public Lcom/myopicmobile/textwarrior/common/LuaLexer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;,
        Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;
    }
.end annotation


# static fields
.field public static final XLONGCOMMENT:I = 0x8

.field public static final XLONGSTRING:I = 0x2

.field public static final XLONGSTRING_BEGIN:I = 0x4

.field public static final XSHORTCOMMENT:I = 0x6

.field public static final XSTRINGA:I = 0xc

.field public static final XSTRINGQ:I = 0xa

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0007\u0000\u0001\u0001\u0001\u0002\u0002\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0006\u0001\b\u0001\t\u0001\n\r\u0005\u0001\u000b\u0001\f\u0001\r\u0001\u000e\u0001\u000f\u0001\u0001\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0003\u001c\u0001\u001d\u0002\u001e\u0001\u001f\u0002 \u0003!\u0001\"\u0002#\u0001$\u0001\"\u0002%\u0001$\u0001\"\u0001&\u0002\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\'\u0001(\u0001)\u0003\u0005\u0001*\u0004\u0005\u0001+\u0001\u0005\u0001,\u0001-\u0007\u0005\u0001.\u0001/\u00010\u00011\u0001\u0000\u00012\u0001\u0000\u00013\u0001\u0000\u0002\u0006\u00014\u0001\u0000\u0001)\u00015\u00016\u00017\u0003\u0005\u00018\u0003\u0005\u00019\u0005\u0005\u0001:\u0001\u0000\u0002;\u0003\u0005\u0001<\u0004\u0005\u0001=\u0001>\u0001\u0005\u0002\u0000\u0001?\u0003\u0005\u0001@\u0001A\u0001\u0005\u0001B\u0001C\u0001\u0000\u0001D\u0001E\u0001F\u0001\u0005\u0001\u0000\u0001\u0005\u0001G"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0007\u0000\u0001\t\u0001\u0001\u0001\t\u0004\u0001\u0001\t\u0011\u0001\u0002\t\u0004\u0001\r\t\u0002\u0001\u0002\t\u0001\u0001\u0002\t\u0001\u0001\u0001\t\u0002\u0001\u0002\t\u0003\u0001\u0001\t\u0003\u0001\u0001\t\u0002\u0000\u0001\u0001\u0001\u0000\u0002\u0001\u0001\t\u0014\u0001\u0004\t\u0001\u0000\u0001\t\u0001\u0000\u0001\t\u0001\u0000\u0002\u0001\u0001\t\u0001\u0000\u0011\u0001\u0001\t\u0001\u0000\r\u0001\u0002\u0000\t\u0001\u0001\u0000\u0004\u0001\u0001\u0000\u0002\u0001"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0001\u0001\u0002\u00016\u00016\u0001\u0003\u0012\u0000\u0001\u0001\u0001$\u0001!\u0001#\u0001\u0000\u0001)\u0001\u0000\u0001\"\u0001+\u0001,\u0001(\u0001\b\u00010\u0001\u000e\u0001\f\u0001*\u0001\t\t\u0006\u00012\u00011\u0001&\u0001\r\u0001%\u0002\u0000\u0004\u000b\u0001\u0007\u0001\u000b\u0011\u0005\u0001\n\u0002\u0005\u0001\u0004\u00014\u0001-\u00013\u0001\u0005\u0001\u0000\u0001\u000f\u0001\u0012\u0001\u001c\u0001\u0011\u0001\u0014\u0001\u001a\u0001\u0005\u0001\u001f\u0001\u0019\u0001\u0005\u0001\u0015\u0001\u0017\u0001\u0005\u0001\u0010\u0001\u0016\u0001\u001e\u0001\u0005\u0001\u0013\u0001\u0018\u0001\u001d\u0001\u001b\u00015\u0001 \u0001\n\u0002\u0005\u0001.\u0001\u0000\u0001/\u0001\'\u0006\u0000\u00016ᾢ\u0000\u00016\u00016\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\udfe6\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u00007\u0000n\u0000¥\u0000Ü\u0000ē\u0000Ŋ\u0000Ɓ\u0000Ƹ\u0000Ɓ\u0000ǯ\u0000Ȧ\u0000ɝ\u0000ʔ\u0000Ɓ\u0000ˋ\u0000̂\u0000̹\u0000Ͱ\u0000Χ\u0000Ϟ\u0000Е\u0000ь\u0000҃\u0000Һ\u0000ӱ\u0000Ԩ\u0000՟\u0000֖\u0000׍\u0000؄\u0000ػ\u0000Ɓ\u0000Ɓ\u0000ٲ\u0000ک\u0000۠\u0000ܗ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000ݎ\u0000ޅ\u0000Ɓ\u0000Ɓ\u0000޼\u0000Ɓ\u0000Ɓ\u0000߳\u0000Ɓ\u0000ࠪ\u0000ࡡ\u0000Ɓ\u0000Ɓ\u0000࢘\u0000࣏\u0000आ\u0000Ɓ\u0000ऽ\u0000ॴ\u0000ফ\u0000Ɓ\u0000Ȧ\u0000ৢ\u0000ਙ\u0000੐\u0000ઇ\u0000ા\u0000Ɓ\u0000૵\u0000ବ\u0000ୣ\u0000ச\u0000ɝ\u0000௑\u0000ఈ\u0000ి\u0000౶\u0000ɝ\u0000ಭ\u0000ɝ\u0000ɝ\u0000೤\u0000ഛ\u0000൒\u0000ඉ\u0000ව\u0000෷\u0000ฮ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000ޅ\u0000Ɓ\u0000ࡡ\u0000Ɓ\u0000ઇ\u0000๥\u0000੐\u0000Ɓ\u0000ຜ\u0000໓\u0000ɝ\u0000ɝ\u0000ɝ\u0000༊\u0000ཁ\u0000ླྀ\u0000ɝ\u0000ྯ\u0000࿦\u0000ဝ\u0000ɝ\u0000ၔ\u0000ႋ\u0000Ⴢ\u0000ჹ\u0000ᄰ\u0000Ɓ\u0000ᅧ\u0000ᆞ\u0000ᇕ\u0000ሌ\u0000ቃ\u0000ቺ\u0000኱\u0000የ\u0000ጟ\u0000ፖ\u0000ᎍ\u0000ɝ\u0000ɝ\u0000Ꮔ\u0000ᆞ\u0000ᏻ\u0000ɝ\u0000ᐲ\u0000ᑩ\u0000ᒠ\u0000ɝ\u0000ɝ\u0000ᓗ\u0000ɝ\u0000ɝ\u0000ᔎ\u0000ɝ\u0000ɝ\u0000ɝ\u0000ᕅ\u0000ᕼ\u0000ᖳ\u0000ɝ"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_TRANS_PACKED_0:Ljava/lang/String; = "\u0001\b\u0001\t\u0001\n\u0001\u000b\u0001\f\u0001\r\u0001\u000e\u0001\r\u0001\u000f\u0001\u0010\u0002\r\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\r\u0001\u001a\u0001\u001b\u0001\r\u0001\u001c\u0001\u001d\u0001\u001e\u0001\r\u0001\u001f\u0002\r\u0001 \u0001!\u0001\"\u0001#\u0001\b\u0001$\u0001%\u0001&\u0001\'\u0001(\u0001)\u0001*\u0001+\u0001,\u0001-\u0001.\u0001/\u00010\u00011\u00012\u0001\b\u0001\r\u0001\u0000\u00033\u00014)3\u00015\b3\u0001\u0000\u00026\u00017\u0001826\u0001\u0000\u00029\u0001:\u0001;29\u0001\u0000\u0003<\u0001=)<\u0001>\b<\u0001\u0000\u0002?\u0001@\u0001A\u001d?\u0001B\u0012?\u0001C\u0001?\u0001\u0000\u0002?\u0001D\u0001E\u001e?\u0001F\u0011?\u0001G\u0001?9\u0000\u0001\t7\u0000\u0001\n8\u0000\u0001H\b\u0000\u0001I.\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0012\r\u0014\u0000\u0001\r\u0007\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0002\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0001L\u0001\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001M\u0002\u0000\u0001M\u0002\u0000\u0001N7\u0000\u0001O7\u0000\u0001P-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001Q\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001R\u0002\r\u0001S\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001T\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001U\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001V\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001W\u0006\r\u0001X\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001Y\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001Z\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001[\t\r\u0001\\\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001]\u0006\r\u0001^\u0004\r\u0001_\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001`\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001a\u000b\r\u0001b\u0001\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0010\r\u0001c\u0001\r\u0014\u0000\u0001\r%\u0000\u0001d\u001f\u0000\u0001e6\u0000\u0001f6\u0000\u0001g+\u0000\u00013A\u0000\u0001h\u001f\u0000\u0001i\u000b\u0000\u000176\u0000\u0001:6\u0000\u0001<A\u0000\u0001j\u001f\u0000\u0001k\u000b\u0000\u0001@U\u0000\u0001?\u0017\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0003\u0000\u0002?\n\u0000\u0001?\u0006\u0000\u0002?\u0003\u0000\u0001DV\u0000\u0001?\u0016\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0004\u0000\u0001?\n\u0000\u0001?\u0006\u0000\u0002?\u0007\u0000\u0001M\u0001\u0000\u0001l\u0001M\u0004\u0000\u0001l.\u0000\u0001m\u0002\u0000\u0001m3\u0000\u0002n\u0001\u0000\u0001n\u0001\u0000\u0001n\u0003\u0000\u0001n\u0001\u0000\u0002n\u0001\u0000\u0001n\u0005\u0000\u0001n\u0001\u0000\u0001n \u0000\u0001M\u0002\u0000\u0001M9\u0000\u0001o.\u0000\u0001p\t\u0000\u0001q-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001r\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001s\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001t\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001u\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001v\u0001w\u0002\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001x\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001y\b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001z\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001{\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001|\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001}\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001~\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\f\r\u0001\u007f\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0080\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0081\u0007\r\u0014\u0000\u0001\r\u0007\u0000\u0001m\u0001J\u0001\u0000\u0001m\n\u0000\u0001J&\u0000\u0001\u0082\b\u0000\u0001p)\u0000\u0002\u0083\u0001\u0084\u0001\u0085\n\u0083\u0001q(\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0086\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\f\r\u0001\u0087\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0088\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0089\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u008a\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001\u008b\b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001\u008c\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u008d\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u008e\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u008f\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001\u0090\t\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u00853\u0083\u0001\u0000\u0001\u0091\f\u0000\u0001\u0092)\u0000\u0001\u0091\u0001\u0084\u000b\u0000\u0001\u0092-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0006\r\u0001\u0093\u000b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001\u0094\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0095\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0096\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001\u0097\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0098\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u0099\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001\u009a\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u009b\f\r\u0014\u0000\u0001\r\u000f\u0000\u0001\u009c-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u009d\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u009e\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000b\r\u0001\u009f\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u00a0\u0007\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u0085\u0001¡2\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001¢\n\r\u0014\u0000\u0001\r\u0003\u0000\u0001\u0084\u0001\u00858\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001£\u0010\r\u0014\u0000\u0001\r\u0001\u0000"

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEOFDone:Z

.field private zzEndRead:I

.field private zzFinalHighSurrogate:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static final constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_LEXSTATE:[I

    const-string v0, "\t\u0000\u0001\u0001\u0001\u0002\u00016\u00016\u0001\u0003\u0012\u0000\u0001\u0001\u0001$\u0001!\u0001#\u0001\u0000\u0001)\u0001\u0000\u0001\"\u0001+\u0001,\u0001(\u0001\b\u00010\u0001\u000e\u0001\f\u0001*\u0001\t\t\u0006\u00012\u00011\u0001&\u0001\r\u0001%\u0002\u0000\u0004\u000b\u0001\u0007\u0001\u000b\u0011\u0005\u0001\n\u0002\u0005\u0001\u0004\u00014\u0001-\u00013\u0001\u0005\u0001\u0000\u0001\u000f\u0001\u0012\u0001\u001c\u0001\u0011\u0001\u0014\u0001\u001a\u0001\u0005\u0001\u001f\u0001\u0019\u0001\u0005\u0001\u0015\u0001\u0017\u0001\u0005\u0001\u0010\u0001\u0016\u0001\u001e\u0001\u0005\u0001\u0013\u0001\u0018\u0001\u001d\u0001\u001b\u00015\u0001 \u0001\n\u0002\u0005\u0001.\u0001\u0000\u0001/\u0001\'\u0006\u0000\u00016ᾢ\u0000\u00016\u00016\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\udfe6\u0000"

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_CMAP:[C

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ACTION:[I

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ROWMAP:[I

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackTrans()[I

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_TRANS:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown internal scanner error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Error: could not match input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Error: pushback value was too large"

    aput-object v2, v0, v1

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    invoke-static {}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ATTRIBUTE:[I

    return-void

    :array_3e
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzLexicalState:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtBOL:Z

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzLexicalState:I

    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtBOL:Z

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;

    invoke-direct {v0, p1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$CharSeqReader;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    return-void
.end method

.method private zzDoEOF()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEOFDone:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEOFDone:Z

    :cond_7
    return-void
.end method

.method private zzRefill()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    if-lez v2, :cond_34

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v5, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget v6, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    :cond_34
    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v3, v3

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_58

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v4, v4

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    :cond_58
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v2, v2

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v5, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-nez v3, :cond_72

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader returned 0 characters. See JFlex examples for workaround."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    if-lez v3, :cond_92

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    if-ne v3, v2, :cond_91

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_91

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    :cond_91
    :goto_91
    return v0

    :cond_92
    move v0, v1

    goto :goto_91
.end method

.method private zzScanError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_a

    :goto_4
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a
    move-exception v0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_4
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, p1

    :goto_6
    if-lt v0, v3, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_13
    add-int/lit8 v2, v1, 0x1

    aput v5, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1f

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_6

    :cond_1f
    move v1, v2

    goto :goto_13
.end method

.method private static zzUnpackAction()[I
    .registers 3

    const/16 v0, 0xa3

    new-array v0, v0, [I

    const-string v1, "\u0007\u0000\u0001\u0001\u0001\u0002\u0002\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0006\u0001\b\u0001\t\u0001\n\r\u0005\u0001\u000b\u0001\f\u0001\r\u0001\u000e\u0001\u000f\u0001\u0001\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0003\u001c\u0001\u001d\u0002\u001e\u0001\u001f\u0002 \u0003!\u0001\"\u0002#\u0001$\u0001\"\u0002%\u0001$\u0001\"\u0001&\u0002\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\'\u0001(\u0001)\u0003\u0005\u0001*\u0004\u0005\u0001+\u0001\u0005\u0001,\u0001-\u0007\u0005\u0001.\u0001/\u00010\u00011\u0001\u0000\u00012\u0001\u0000\u00013\u0001\u0000\u0002\u0006\u00014\u0001\u0000\u0001)\u00015\u00016\u00017\u0003\u0005\u00018\u0003\u0005\u00019\u0005\u0005\u0001:\u0001\u0000\u0002;\u0003\u0005\u0001<\u0004\u0005\u0001=\u0001>\u0001\u0005\u0002\u0000\u0001?\u0003\u0005\u0001@\u0001A\u0001\u0005\u0001B\u0001C\u0001\u0000\u0001D\u0001E\u0001F\u0001\u0005\u0001\u0000\u0001\u0005\u0001G"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackAction(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, p1

    :goto_6
    if-lt v0, v3, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_13
    add-int/lit8 v2, v1, 0x1

    aput v5, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1f

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_6

    :cond_1f
    move v1, v2

    goto :goto_13
.end method

.method private static zzUnpackAttribute()[I
    .registers 3

    const/16 v0, 0xa3

    new-array v0, v0, [I

    const-string v1, "\u0007\u0000\u0001\t\u0001\u0001\u0001\t\u0004\u0001\u0001\t\u0011\u0001\u0002\t\u0004\u0001\r\t\u0002\u0001\u0002\t\u0001\u0001\u0002\t\u0001\u0001\u0001\t\u0002\u0001\u0002\t\u0003\u0001\u0001\t\u0003\u0001\u0001\t\u0002\u0000\u0001\u0001\u0001\u0000\u0002\u0001\u0001\t\u0014\u0001\u0004\t\u0001\u0000\u0001\t\u0001\u0000\u0001\t\u0001\u0000\u0002\u0001\u0001\t\u0001\u0000\u0011\u0001\u0001\t\u0001\u0000\r\u0001\u0002\u0000\t\u0001\u0001\u0000\u0004\u0001\u0001\u0000\u0002\u0001"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .registers 7

    const/4 v1, 0x0

    const/high16 v0, 0x110000

    new-array v3, v0, [C

    move v2, v1

    move v0, v1

    :goto_7
    const/16 v1, 0xbc

    if-lt v2, v1, :cond_c

    return-object v3

    :cond_c
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_17
    add-int/lit8 v1, v0, 0x1

    aput-char v5, v3, v0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_23

    add-int/lit8 v2, v4, 0x1

    move v0, v1

    goto :goto_7

    :cond_23
    move v0, v1

    goto :goto_17
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_8

    return p1

    :cond_8
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_5
.end method

.method private static zzUnpackRowMap()[I
    .registers 3

    const/16 v0, 0xa3

    new-array v0, v0, [I

    const-string v1, "\u0000\u0000\u00007\u0000n\u0000¥\u0000Ü\u0000ē\u0000Ŋ\u0000Ɓ\u0000Ƹ\u0000Ɓ\u0000ǯ\u0000Ȧ\u0000ɝ\u0000ʔ\u0000Ɓ\u0000ˋ\u0000̂\u0000̹\u0000Ͱ\u0000Χ\u0000Ϟ\u0000Е\u0000ь\u0000҃\u0000Һ\u0000ӱ\u0000Ԩ\u0000՟\u0000֖\u0000׍\u0000؄\u0000ػ\u0000Ɓ\u0000Ɓ\u0000ٲ\u0000ک\u0000۠\u0000ܗ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000ݎ\u0000ޅ\u0000Ɓ\u0000Ɓ\u0000޼\u0000Ɓ\u0000Ɓ\u0000߳\u0000Ɓ\u0000ࠪ\u0000ࡡ\u0000Ɓ\u0000Ɓ\u0000࢘\u0000࣏\u0000आ\u0000Ɓ\u0000ऽ\u0000ॴ\u0000ফ\u0000Ɓ\u0000Ȧ\u0000ৢ\u0000ਙ\u0000੐\u0000ઇ\u0000ા\u0000Ɓ\u0000૵\u0000ବ\u0000ୣ\u0000ச\u0000ɝ\u0000௑\u0000ఈ\u0000ి\u0000౶\u0000ɝ\u0000ಭ\u0000ɝ\u0000ɝ\u0000೤\u0000ഛ\u0000൒\u0000ඉ\u0000ව\u0000෷\u0000ฮ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000Ɓ\u0000ޅ\u0000Ɓ\u0000ࡡ\u0000Ɓ\u0000ઇ\u0000๥\u0000੐\u0000Ɓ\u0000ຜ\u0000໓\u0000ɝ\u0000ɝ\u0000ɝ\u0000༊\u0000ཁ\u0000ླྀ\u0000ɝ\u0000ྯ\u0000࿦\u0000ဝ\u0000ɝ\u0000ၔ\u0000ႋ\u0000Ⴢ\u0000ჹ\u0000ᄰ\u0000Ɓ\u0000ᅧ\u0000ᆞ\u0000ᇕ\u0000ሌ\u0000ቃ\u0000ቺ\u0000኱\u0000የ\u0000ጟ\u0000ፖ\u0000ᎍ\u0000ɝ\u0000ɝ\u0000Ꮔ\u0000ᆞ\u0000ᏻ\u0000ɝ\u0000ᐲ\u0000ᑩ\u0000ᒠ\u0000ɝ\u0000ɝ\u0000ᓗ\u0000ɝ\u0000ɝ\u0000ᔎ\u0000ɝ\u0000ɝ\u0000ɝ\u0000ᕅ\u0000ᕼ\u0000ᖳ\u0000ɝ"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackTrans(Ljava/lang/String;I[I)I
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, p1

    :goto_7
    if-lt v2, v3, :cond_a

    return v0

    :cond_a
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_15
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v6, v5, -0x1

    aput v6, p2, v0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_23

    add-int/lit8 v2, v4, 0x1

    move v0, v1

    goto :goto_7

    :cond_23
    move v0, v1

    goto :goto_15
.end method

.method private static zzUnpackTrans()[I
    .registers 3

    const/16 v0, 0x15ea

    new-array v0, v0, [I

    const-string v1, "\u0001\b\u0001\t\u0001\n\u0001\u000b\u0001\f\u0001\r\u0001\u000e\u0001\r\u0001\u000f\u0001\u0010\u0002\r\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\r\u0001\u001a\u0001\u001b\u0001\r\u0001\u001c\u0001\u001d\u0001\u001e\u0001\r\u0001\u001f\u0002\r\u0001 \u0001!\u0001\"\u0001#\u0001\b\u0001$\u0001%\u0001&\u0001\'\u0001(\u0001)\u0001*\u0001+\u0001,\u0001-\u0001.\u0001/\u00010\u00011\u00012\u0001\b\u0001\r\u0001\u0000\u00033\u00014)3\u00015\b3\u0001\u0000\u00026\u00017\u0001826\u0001\u0000\u00029\u0001:\u0001;29\u0001\u0000\u0003<\u0001=)<\u0001>\b<\u0001\u0000\u0002?\u0001@\u0001A\u001d?\u0001B\u0012?\u0001C\u0001?\u0001\u0000\u0002?\u0001D\u0001E\u001e?\u0001F\u0011?\u0001G\u0001?9\u0000\u0001\t7\u0000\u0001\n8\u0000\u0001H\b\u0000\u0001I.\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0012\r\u0014\u0000\u0001\r\u0007\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0002\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0001L\u0001\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001M\u0002\u0000\u0001M\u0002\u0000\u0001N7\u0000\u0001O7\u0000\u0001P-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001Q\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001R\u0002\r\u0001S\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001T\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001U\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001V\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001W\u0006\r\u0001X\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001Y\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001Z\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001[\t\r\u0001\\\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001]\u0006\r\u0001^\u0004\r\u0001_\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001`\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001a\u000b\r\u0001b\u0001\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0010\r\u0001c\u0001\r\u0014\u0000\u0001\r%\u0000\u0001d\u001f\u0000\u0001e6\u0000\u0001f6\u0000\u0001g+\u0000\u00013A\u0000\u0001h\u001f\u0000\u0001i\u000b\u0000\u000176\u0000\u0001:6\u0000\u0001<A\u0000\u0001j\u001f\u0000\u0001k\u000b\u0000\u0001@U\u0000\u0001?\u0017\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0003\u0000\u0002?\n\u0000\u0001?\u0006\u0000\u0002?\u0003\u0000\u0001DV\u0000\u0001?\u0016\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0004\u0000\u0001?\n\u0000\u0001?\u0006\u0000\u0002?\u0007\u0000\u0001M\u0001\u0000\u0001l\u0001M\u0004\u0000\u0001l.\u0000\u0001m\u0002\u0000\u0001m3\u0000\u0002n\u0001\u0000\u0001n\u0001\u0000\u0001n\u0003\u0000\u0001n\u0001\u0000\u0002n\u0001\u0000\u0001n\u0005\u0000\u0001n\u0001\u0000\u0001n \u0000\u0001M\u0002\u0000\u0001M9\u0000\u0001o.\u0000\u0001p\t\u0000\u0001q-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001r\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001s\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001t\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001u\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001v\u0001w\u0002\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001x\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001y\b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001z\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001{\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001|\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001}\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001~\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\f\r\u0001\u007f\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0080\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0081\u0007\r\u0014\u0000\u0001\r\u0007\u0000\u0001m\u0001J\u0001\u0000\u0001m\n\u0000\u0001J&\u0000\u0001\u0082\b\u0000\u0001p)\u0000\u0002\u0083\u0001\u0084\u0001\u0085\n\u0083\u0001q(\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0086\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\f\r\u0001\u0087\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0088\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0089\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u008a\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001\u008b\b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001\u008c\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u008d\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u008e\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u008f\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001\u0090\t\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u00853\u0083\u0001\u0000\u0001\u0091\f\u0000\u0001\u0092)\u0000\u0001\u0091\u0001\u0084\u000b\u0000\u0001\u0092-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0006\r\u0001\u0093\u000b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001\u0094\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0095\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0096\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001\u0097\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0098\f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u0099\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\b\r\u0001\u009a\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u009b\f\r\u0014\u0000\u0001\r\u000f\u0000\u0001\u009c-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u009d\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u009e\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000b\r\u0001\u009f\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u00a0\u0007\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u0085\u0001¡2\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001¢\n\r\u0014\u0000\u0001\r\u0003\u0000\u0001\u0084\u0001\u00858\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001£\u0010\r\u0014\u0000\u0001\r\u0001\u0000"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackTrans(Ljava/lang/String;I[I)I

    return-object v0
.end method


# virtual methods
.method public advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    sget-object v8, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_CMAP:[C

    sget-object v9, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_TRANS:[I

    sget-object v10, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ROWMAP:[I

    sget-object v11, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ATTRIBUTE:[I

    :goto_c
    :pswitch_c  #0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d, 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e
    iget v5, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    const/4 v2, -0x1

    iput v5, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iput v5, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    sget-object v3, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_LEXSTATE:[I

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzLexicalState:I

    aget v3, v3, v4

    iput v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    aget v3, v11, v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    :cond_26
    move v3, v1

    move v6, v2

    move v4, v5

    move v7, v5

    :goto_2a
    if-ge v7, v3, :cond_59

    invoke-static {v0, v7, v3}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int v5, v2, v7

    move v2, v1

    :goto_37
    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    aget v1, v10, v1

    aget-char v7, v8, v2

    add-int/2addr v1, v7

    aget v1, v9, v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_80

    move v1, v3

    :goto_44
    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_96

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    if-ne v2, v3, :cond_96

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtEOF:Z

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzDoEOF()V

    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    :goto_58
    return-object v0

    :cond_59
    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtEOF:Z

    if-eqz v1, :cond_60

    const/4 v2, -0x1

    move v1, v3

    goto :goto_44

    :cond_60
    iput v7, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzRefill()Z

    move-result v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    if-eqz v1, :cond_75

    const/4 v2, -0x1

    move v1, v3

    goto :goto_44

    :cond_75
    invoke-static {v0, v2, v3}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v2

    move v2, v1

    goto :goto_37

    :cond_80
    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    aget v1, v11, v1

    and-int/lit8 v7, v1, 0x1

    const/4 v12, 0x1

    if-ne v7, v12, :cond_279

    iget v6, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_275

    move v4, v5

    move v1, v3

    goto :goto_44

    :cond_96
    if-gez v6, :cond_a1

    :goto_98
    packed-switch v6, :pswitch_data_27c

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzScanError(I)V

    goto/16 :goto_c

    :cond_a1
    sget-object v2, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ACTION:[I

    aget v6, v2, v6

    goto :goto_98

    :pswitch_a6  #0x1
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WRONG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_a9  #0x2
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_ac  #0x3
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NEWLINE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_af  #0x4
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LBRACK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_b2  #0x5
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NAME:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_b5  #0x6
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NUMBER:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_b8  #0x7
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->PLUS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_bb  #0x8
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_be  #0x9
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ASSIGN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_c1  #0xa
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->MINUS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_c4  #0xb
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_cc  #0xc
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_d4  #0xd
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->GETN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_58

    :pswitch_d7  #0xe
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->GT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_db  #0xf
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_df  #0x10
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->MULT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_e3  #0x11
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->MOD:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_e7  #0x12
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DIV:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_eb  #0x13
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LPAREN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_ef  #0x14
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RPAREN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_f3  #0x15
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RBRACK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_f7  #0x16
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_fb  #0x17
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_ff  #0x18
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->COMMA:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_103  #0x19
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SEMI:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_107  #0x1a
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->COLON:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_10b  #0x1b
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->EXP:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_10f  #0x1c
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_113  #0x1d
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    goto/16 :goto_58

    :pswitch_128  #0x1e
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NL_BEFORE_LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_12c  #0x1f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SHORTCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_130  #0x20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    goto/16 :goto_58

    :pswitch_145  #0x21
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_149  #0x22
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_14d  #0x23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WRONG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_155  #0x24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_15d  #0x25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WRONG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_165  #0x26
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->setCurrentExtQuoteStart(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING_BEGIN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_17a  #0x27
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->CONCAT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_17e  #0x28
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->EQ:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_182  #0x29
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    goto/16 :goto_58

    :pswitch_197  #0x2a
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DO:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_19b  #0x2b
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->OR:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_19f  #0x2c
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->IN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1a3  #0x2d
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->IF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1a7  #0x2e
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SHEBANG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1af  #0x2f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->GE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1b3  #0x30
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1b7  #0x31
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1bb  #0x32
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->isCurrentExtQuoteStart(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->resetCurrentExtQuoteStart()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING_END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :cond_1d4
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_1e5  #0x33
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->isCurrentExtQuoteStart(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->resetCurrentExtQuoteStart()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT_END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :cond_1fe
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_20f  #0x34
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELLIPSIS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_213  #0x35
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->AND:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_217  #0x36
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_21b  #0x37
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_21f  #0x38
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_223  #0x39
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FOR:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_227  #0x3a
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->setCurrentExtQuoteStart(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT_BEGIN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_23d  #0x3b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LUADOC_COMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_245  #0x3c
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_249  #0x3d
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->TRUE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_24d  #0x3e
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->THEN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_251  #0x3f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->BREAK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_255  #0x40
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LOCAL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_259  #0x41
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FALSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_25d  #0x42
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->UNTIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_261  #0x43
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WHILE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_265  #0x44
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RETURN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_269  #0x45
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->REPEAT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_26d  #0x46
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSEIF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :pswitch_271  #0x47
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FUNCTION:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_58

    :cond_275
    move v4, v5

    move v7, v5

    goto/16 :goto_2a

    :cond_279
    move v7, v5

    goto/16 :goto_2a

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_a6  #00000001
        :pswitch_a9  #00000002
        :pswitch_ac  #00000003
        :pswitch_af  #00000004
        :pswitch_b2  #00000005
        :pswitch_b5  #00000006
        :pswitch_b8  #00000007
        :pswitch_bb  #00000008
        :pswitch_be  #00000009
        :pswitch_c1  #0000000a
        :pswitch_c4  #0000000b
        :pswitch_cc  #0000000c
        :pswitch_d4  #0000000d
        :pswitch_d7  #0000000e
        :pswitch_db  #0000000f
        :pswitch_df  #00000010
        :pswitch_e3  #00000011
        :pswitch_e7  #00000012
        :pswitch_eb  #00000013
        :pswitch_ef  #00000014
        :pswitch_f3  #00000015
        :pswitch_f7  #00000016
        :pswitch_fb  #00000017
        :pswitch_ff  #00000018
        :pswitch_103  #00000019
        :pswitch_107  #0000001a
        :pswitch_10b  #0000001b
        :pswitch_10f  #0000001c
        :pswitch_113  #0000001d
        :pswitch_128  #0000001e
        :pswitch_12c  #0000001f
        :pswitch_130  #00000020
        :pswitch_145  #00000021
        :pswitch_149  #00000022
        :pswitch_14d  #00000023
        :pswitch_155  #00000024
        :pswitch_15d  #00000025
        :pswitch_165  #00000026
        :pswitch_17a  #00000027
        :pswitch_17e  #00000028
        :pswitch_182  #00000029
        :pswitch_197  #0000002a
        :pswitch_19b  #0000002b
        :pswitch_19f  #0000002c
        :pswitch_1a3  #0000002d
        :pswitch_1a7  #0000002e
        :pswitch_1af  #0000002f
        :pswitch_1b3  #00000030
        :pswitch_1b7  #00000031
        :pswitch_1bb  #00000032
        :pswitch_1e5  #00000033
        :pswitch_20f  #00000034
        :pswitch_213  #00000035
        :pswitch_217  #00000036
        :pswitch_21b  #00000037
        :pswitch_21f  #00000038
        :pswitch_223  #00000039
        :pswitch_227  #0000003a
        :pswitch_23d  #0000003b
        :pswitch_245  #0000003c
        :pswitch_249  #0000003d
        :pswitch_24d  #0000003e
        :pswitch_251  #0000003f
        :pswitch_255  #00000040
        :pswitch_259  #00000041
        :pswitch_25d  #00000042
        :pswitch_261  #00000043
        :pswitch_265  #00000044
        :pswitch_269  #00000045
        :pswitch_26d  #00000046
        :pswitch_271  #00000047
        :pswitch_c  #00000048
        :pswitch_c  #00000049
        :pswitch_c  #0000004a
        :pswitch_c  #0000004b
        :pswitch_c  #0000004c
        :pswitch_c  #0000004d
        :pswitch_c  #0000004e
        :pswitch_c  #0000004f
        :pswitch_c  #00000050
        :pswitch_c  #00000051
        :pswitch_c  #00000052
        :pswitch_c  #00000053
        :pswitch_c  #00000054
        :pswitch_c  #00000055
        :pswitch_c  #00000056
        :pswitch_c  #00000057
        :pswitch_c  #00000058
        :pswitch_c  #00000059
        :pswitch_c  #0000005a
        :pswitch_c  #0000005b
        :pswitch_c  #0000005c
        :pswitch_c  #0000005d
        :pswitch_c  #0000005e
        :pswitch_c  #0000005f
        :pswitch_c  #00000060
        :pswitch_c  #00000061
        :pswitch_c  #00000062
        :pswitch_c  #00000063
        :pswitch_c  #00000064
        :pswitch_c  #00000065
        :pswitch_c  #00000066
        :pswitch_c  #00000067
        :pswitch_c  #00000068
        :pswitch_c  #00000069
        :pswitch_c  #0000006a
        :pswitch_c  #0000006b
        :pswitch_c  #0000006c
        :pswitch_c  #0000006d
        :pswitch_c  #0000006e
        :pswitch_c  #0000006f
        :pswitch_c  #00000070
        :pswitch_c  #00000071
        :pswitch_c  #00000072
        :pswitch_c  #00000073
        :pswitch_c  #00000074
        :pswitch_c  #00000075
        :pswitch_c  #00000076
        :pswitch_c  #00000077
        :pswitch_c  #00000078
        :pswitch_c  #00000079
        :pswitch_c  #0000007a
        :pswitch_c  #0000007b
        :pswitch_c  #0000007c
        :pswitch_c  #0000007d
        :pswitch_c  #0000007e
        :pswitch_c  #0000007f
        :pswitch_c  #00000080
        :pswitch_c  #00000081
        :pswitch_c  #00000082
        :pswitch_c  #00000083
        :pswitch_c  #00000084
        :pswitch_c  #00000085
        :pswitch_c  #00000086
        :pswitch_c  #00000087
        :pswitch_c  #00000088
        :pswitch_c  #00000089
        :pswitch_c  #0000008a
        :pswitch_c  #0000008b
        :pswitch_c  #0000008c
        :pswitch_c  #0000008d
        :pswitch_c  #0000008e
    .end packed-switch
.end method

.method public final yybegin(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput p1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzLexicalState:I

    return-void
.end method

.method public final yycharat(I)C
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final yyclose()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtEOF:Z

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_10
    return-void
.end method

.method public final yylength()I
    .registers 3

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yypushback(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yylength()I

    move-result v0

    if-le p1, v0, :cond_a

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzScanError(I)V

    :cond_a
    iget v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    const/16 v2, 0x4000

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtBOL:Z

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtEOF:Z

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEOFDone:Z

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yycolumn:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yychar:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yyline:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzLexicalState:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v0, v0

    if-le v0, v2, :cond_27

    new-array v0, v2, [C

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    :cond_27
    return-void
.end method

.method public final yystate()I
    .registers 2

    iget v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzLexicalState:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
