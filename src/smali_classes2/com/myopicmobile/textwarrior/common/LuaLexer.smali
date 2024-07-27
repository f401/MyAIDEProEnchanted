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

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0007\u0000\u0001\u0001\u0001\u0002\u0002\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0006\u0001\u0008\u0001\t\u0001\n\r\u0005\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\u000f\u0001\u0001\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0003\u001c\u0001\u001d\u0002\u001e\u0001\u001f\u0002 \u0003!\u0001\"\u0002#\u0001$\u0001\"\u0002%\u0001$\u0001\"\u0001&\u0002\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\'\u0001(\u0001)\u0003\u0005\u0001*\u0004\u0005\u0001+\u0001\u0005\u0001,\u0001-\u0007\u0005\u0001.\u0001/\u00010\u00011\u0001\u0000\u00012\u0001\u0000\u00013\u0001\u0000\u0002\u0006\u00014\u0001\u0000\u0001)\u00015\u00016\u00017\u0003\u0005\u00018\u0003\u0005\u00019\u0005\u0005\u0001:\u0001\u0000\u0002;\u0003\u0005\u0001<\u0004\u0005\u0001=\u0001>\u0001\u0005\u0002\u0000\u0001?\u0003\u0005\u0001@\u0001A\u0001\u0005\u0001B\u0001C\u0001\u0000\u0001D\u0001E\u0001F\u0001\u0005\u0001\u0000\u0001\u0005\u0001G"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0007\u0000\u0001\t\u0001\u0001\u0001\t\u0004\u0001\u0001\t\u0011\u0001\u0002\t\u0004\u0001\r\t\u0002\u0001\u0002\t\u0001\u0001\u0002\t\u0001\u0001\u0001\t\u0002\u0001\u0002\t\u0003\u0001\u0001\t\u0003\u0001\u0001\t\u0002\u0000\u0001\u0001\u0001\u0000\u0002\u0001\u0001\t\u0014\u0001\u0004\t\u0001\u0000\u0001\t\u0001\u0000\u0001\t\u0001\u0000\u0002\u0001\u0001\t\u0001\u0000\u0011\u0001\u0001\t\u0001\u0000\r\u0001\u0002\u0000\t\u0001\u0001\u0000\u0004\u0001\u0001\u0000\u0002\u0001"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0001\u0001\u0002\u00016\u00016\u0001\u0003\u0012\u0000\u0001\u0001\u0001$\u0001!\u0001#\u0001\u0000\u0001)\u0001\u0000\u0001\"\u0001+\u0001,\u0001(\u0001\u0008\u00010\u0001\u000e\u0001\u000c\u0001*\u0001\t\t\u0006\u00012\u00011\u0001&\u0001\r\u0001%\u0002\u0000\u0004\u000b\u0001\u0007\u0001\u000b\u0011\u0005\u0001\n\u0002\u0005\u0001\u0004\u00014\u0001-\u00013\u0001\u0005\u0001\u0000\u0001\u000f\u0001\u0012\u0001\u001c\u0001\u0011\u0001\u0014\u0001\u001a\u0001\u0005\u0001\u001f\u0001\u0019\u0001\u0005\u0001\u0015\u0001\u0017\u0001\u0005\u0001\u0010\u0001\u0016\u0001\u001e\u0001\u0005\u0001\u0013\u0001\u0018\u0001\u001d\u0001\u001b\u00015\u0001 \u0001\n\u0002\u0005\u0001.\u0001\u0000\u0001/\u0001\'\u0006\u0000\u00016\u1fa2\u0000\u00016\u00016\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\udfe6\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u00007\u0000n\u0000\u00a5\u0000\u00dc\u0000\u0113\u0000\u014a\u0000\u0181\u0000\u01b8\u0000\u0181\u0000\u01ef\u0000\u0226\u0000\u025d\u0000\u0294\u0000\u0181\u0000\u02cb\u0000\u0302\u0000\u0339\u0000\u0370\u0000\u03a7\u0000\u03de\u0000\u0415\u0000\u044c\u0000\u0483\u0000\u04ba\u0000\u04f1\u0000\u0528\u0000\u055f\u0000\u0596\u0000\u05cd\u0000\u0604\u0000\u063b\u0000\u0181\u0000\u0181\u0000\u0672\u0000\u06a9\u0000\u06e0\u0000\u0717\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u074e\u0000\u0785\u0000\u0181\u0000\u0181\u0000\u07bc\u0000\u0181\u0000\u0181\u0000\u07f3\u0000\u0181\u0000\u082a\u0000\u0861\u0000\u0181\u0000\u0181\u0000\u0898\u0000\u08cf\u0000\u0906\u0000\u0181\u0000\u093d\u0000\u0974\u0000\u09ab\u0000\u0181\u0000\u0226\u0000\u09e2\u0000\u0a19\u0000\u0a50\u0000\u0a87\u0000\u0abe\u0000\u0181\u0000\u0af5\u0000\u0b2c\u0000\u0b63\u0000\u0b9a\u0000\u025d\u0000\u0bd1\u0000\u0c08\u0000\u0c3f\u0000\u0c76\u0000\u025d\u0000\u0cad\u0000\u025d\u0000\u025d\u0000\u0ce4\u0000\u0d1b\u0000\u0d52\u0000\u0d89\u0000\u0dc0\u0000\u0df7\u0000\u0e2e\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0785\u0000\u0181\u0000\u0861\u0000\u0181\u0000\u0a87\u0000\u0e65\u0000\u0a50\u0000\u0181\u0000\u0e9c\u0000\u0ed3\u0000\u025d\u0000\u025d\u0000\u025d\u0000\u0f0a\u0000\u0f41\u0000\u0f78\u0000\u025d\u0000\u0faf\u0000\u0fe6\u0000\u101d\u0000\u025d\u0000\u1054\u0000\u108b\u0000\u10c2\u0000\u10f9\u0000\u1130\u0000\u0181\u0000\u1167\u0000\u119e\u0000\u11d5\u0000\u120c\u0000\u1243\u0000\u127a\u0000\u12b1\u0000\u12e8\u0000\u131f\u0000\u1356\u0000\u138d\u0000\u025d\u0000\u025d\u0000\u13c4\u0000\u119e\u0000\u13fb\u0000\u025d\u0000\u1432\u0000\u1469\u0000\u14a0\u0000\u025d\u0000\u025d\u0000\u14d7\u0000\u025d\u0000\u025d\u0000\u150e\u0000\u025d\u0000\u025d\u0000\u025d\u0000\u1545\u0000\u157c\u0000\u15b3\u0000\u025d"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_TRANS_PACKED_0:Ljava/lang/String; = "\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\r\u0001\u000f\u0001\u0010\u0002\r\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\r\u0001\u001a\u0001\u001b\u0001\r\u0001\u001c\u0001\u001d\u0001\u001e\u0001\r\u0001\u001f\u0002\r\u0001 \u0001!\u0001\"\u0001#\u0001\u0008\u0001$\u0001%\u0001&\u0001\'\u0001(\u0001)\u0001*\u0001+\u0001,\u0001-\u0001.\u0001/\u00010\u00011\u00012\u0001\u0008\u0001\r\u0001\u0000\u00033\u00014)3\u00015\u00083\u0001\u0000\u00026\u00017\u0001826\u0001\u0000\u00029\u0001:\u0001;29\u0001\u0000\u0003<\u0001=)<\u0001>\u0008<\u0001\u0000\u0002?\u0001@\u0001A\u001d?\u0001B\u0012?\u0001C\u0001?\u0001\u0000\u0002?\u0001D\u0001E\u001e?\u0001F\u0011?\u0001G\u0001?9\u0000\u0001\t7\u0000\u0001\n8\u0000\u0001H\u0008\u0000\u0001I.\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0012\r\u0014\u0000\u0001\r\u0007\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0002\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0001L\u0001\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001M\u0002\u0000\u0001M\u0002\u0000\u0001N7\u0000\u0001O7\u0000\u0001P-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001Q\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001R\u0002\r\u0001S\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001T\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001U\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001V\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001W\u0006\r\u0001X\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001Y\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001Z\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001[\t\r\u0001\\\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001]\u0006\r\u0001^\u0004\r\u0001_\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001`\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001a\u000b\r\u0001b\u0001\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0010\r\u0001c\u0001\r\u0014\u0000\u0001\r%\u0000\u0001d\u001f\u0000\u0001e6\u0000\u0001f6\u0000\u0001g+\u0000\u00013A\u0000\u0001h\u001f\u0000\u0001i\u000b\u0000\u000176\u0000\u0001:6\u0000\u0001<A\u0000\u0001j\u001f\u0000\u0001k\u000b\u0000\u0001@U\u0000\u0001?\u0017\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0003\u0000\u0002?\n\u0000\u0001?\u0006\u0000\u0002?\u0003\u0000\u0001DV\u0000\u0001?\u0016\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0004\u0000\u0001?\n\u0000\u0001?\u0006\u0000\u0002?\u0007\u0000\u0001M\u0001\u0000\u0001l\u0001M\u0004\u0000\u0001l.\u0000\u0001m\u0002\u0000\u0001m3\u0000\u0002n\u0001\u0000\u0001n\u0001\u0000\u0001n\u0003\u0000\u0001n\u0001\u0000\u0002n\u0001\u0000\u0001n\u0005\u0000\u0001n\u0001\u0000\u0001n \u0000\u0001M\u0002\u0000\u0001M9\u0000\u0001o.\u0000\u0001p\t\u0000\u0001q-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001r\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001s\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001t\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001u\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001v\u0001w\u0002\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001x\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001y\u0008\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001z\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001{\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001|\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001}\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001~\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000c\r\u0001\u007f\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0080\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0081\u0007\r\u0014\u0000\u0001\r\u0007\u0000\u0001m\u0001J\u0001\u0000\u0001m\n\u0000\u0001J&\u0000\u0001\u0082\u0008\u0000\u0001p)\u0000\u0002\u0083\u0001\u0084\u0001\u0085\n\u0083\u0001q(\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0086\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000c\r\u0001\u0087\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0088\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0089\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u008a\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001\u008b\u0008\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001\u008c\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u008d\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u008e\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u008f\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001\u0090\t\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u00853\u0083\u0001\u0000\u0001\u0091\u000c\u0000\u0001\u0092)\u0000\u0001\u0091\u0001\u0084\u000b\u0000\u0001\u0092-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0006\r\u0001\u0093\u000b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001\u0094\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0095\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0096\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001\u0097\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0098\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u0099\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001\u009a\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u009b\u000c\r\u0014\u0000\u0001\r\u000f\u0000\u0001\u009c-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u009d\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u009e\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000b\r\u0001\u009f\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u00a0\u0007\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u0085\u0001\u00a12\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001\u00a2\n\r\u0014\u0000\u0001\r\u0003\u0000\u0001\u0084\u0001\u00858\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u00a3\u0010\r\u0014\u0000\u0001\r\u0001\u0000"

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

    fill-array-data v0, :array_0

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_LEXSTATE:[I

    const-string v0, "\t\u0000\u0001\u0001\u0001\u0002\u00016\u00016\u0001\u0003\u0012\u0000\u0001\u0001\u0001$\u0001!\u0001#\u0001\u0000\u0001)\u0001\u0000\u0001\"\u0001+\u0001,\u0001(\u0001\u0008\u00010\u0001\u000e\u0001\u000c\u0001*\u0001\t\t\u0006\u00012\u00011\u0001&\u0001\r\u0001%\u0002\u0000\u0004\u000b\u0001\u0007\u0001\u000b\u0011\u0005\u0001\n\u0002\u0005\u0001\u0004\u00014\u0001-\u00013\u0001\u0005\u0001\u0000\u0001\u000f\u0001\u0012\u0001\u001c\u0001\u0011\u0001\u0014\u0001\u001a\u0001\u0005\u0001\u001f\u0001\u0019\u0001\u0005\u0001\u0015\u0001\u0017\u0001\u0005\u0001\u0010\u0001\u0016\u0001\u001e\u0001\u0005\u0001\u0013\u0001\u0018\u0001\u001d\u0001\u001b\u00015\u0001 \u0001\n\u0002\u0005\u0001.\u0001\u0000\u0001/\u0001\'\u0006\u0000\u00016\u1fa2\u0000\u00016\u00016\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000\uffff\u0000?\u0000"

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

    :array_0
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

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEOFDone:Z

    :cond_0
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

    if-lez v2, :cond_0

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

    :cond_0
    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v3, v3

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_1

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

    :cond_1
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    array-length v2, v2

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v5, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reader returned 0 characters. See JFlex examples for workaround."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lez v3, :cond_4

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzFinalHighSurrogate:I

    :cond_3
    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
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
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, p1

    :goto_0
    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    add-int/lit8 v2, v1, 0x1

    aput v5, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static zzUnpackAction()[I
    .registers 3

    const/16 v0, 0xa3

    new-array v0, v0, [I

    const-string v1, "\u0007\u0000\u0001\u0001\u0001\u0002\u0002\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0006\u0001\u0008\u0001\t\u0001\n\r\u0005\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\u000f\u0001\u0001\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u001a\u0001\u001b\u0003\u001c\u0001\u001d\u0002\u001e\u0001\u001f\u0002 \u0003!\u0001\"\u0002#\u0001$\u0001\"\u0002%\u0001$\u0001\"\u0001&\u0002\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\'\u0001(\u0001)\u0003\u0005\u0001*\u0004\u0005\u0001+\u0001\u0005\u0001,\u0001-\u0007\u0005\u0001.\u0001/\u00010\u00011\u0001\u0000\u00012\u0001\u0000\u00013\u0001\u0000\u0002\u0006\u00014\u0001\u0000\u0001)\u00015\u00016\u00017\u0003\u0005\u00018\u0003\u0005\u00019\u0005\u0005\u0001:\u0001\u0000\u0002;\u0003\u0005\u0001<\u0004\u0005\u0001=\u0001>\u0001\u0005\u0002\u0000\u0001?\u0003\u0005\u0001@\u0001A\u0001\u0005\u0001B\u0001C\u0001\u0000\u0001D\u0001E\u0001F\u0001\u0005\u0001\u0000\u0001\u0005\u0001G"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackAction(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    move v0, p1

    :goto_0
    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    add-int/lit8 v2, v4, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
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

    :goto_0
    const/16 v1, 0xbc

    if-lt v2, v1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v2, v1

    :goto_1
    add-int/lit8 v1, v0, 0x1

    aput-char v5, v3, v0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_1

    add-int/lit8 v2, v4, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return p1

    :cond_0
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

    goto :goto_0
.end method

.method private static zzUnpackRowMap()[I
    .registers 3

    const/16 v0, 0xa3

    new-array v0, v0, [I

    const-string v1, "\u0000\u0000\u00007\u0000n\u0000\u00a5\u0000\u00dc\u0000\u0113\u0000\u014a\u0000\u0181\u0000\u01b8\u0000\u0181\u0000\u01ef\u0000\u0226\u0000\u025d\u0000\u0294\u0000\u0181\u0000\u02cb\u0000\u0302\u0000\u0339\u0000\u0370\u0000\u03a7\u0000\u03de\u0000\u0415\u0000\u044c\u0000\u0483\u0000\u04ba\u0000\u04f1\u0000\u0528\u0000\u055f\u0000\u0596\u0000\u05cd\u0000\u0604\u0000\u063b\u0000\u0181\u0000\u0181\u0000\u0672\u0000\u06a9\u0000\u06e0\u0000\u0717\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u074e\u0000\u0785\u0000\u0181\u0000\u0181\u0000\u07bc\u0000\u0181\u0000\u0181\u0000\u07f3\u0000\u0181\u0000\u082a\u0000\u0861\u0000\u0181\u0000\u0181\u0000\u0898\u0000\u08cf\u0000\u0906\u0000\u0181\u0000\u093d\u0000\u0974\u0000\u09ab\u0000\u0181\u0000\u0226\u0000\u09e2\u0000\u0a19\u0000\u0a50\u0000\u0a87\u0000\u0abe\u0000\u0181\u0000\u0af5\u0000\u0b2c\u0000\u0b63\u0000\u0b9a\u0000\u025d\u0000\u0bd1\u0000\u0c08\u0000\u0c3f\u0000\u0c76\u0000\u025d\u0000\u0cad\u0000\u025d\u0000\u025d\u0000\u0ce4\u0000\u0d1b\u0000\u0d52\u0000\u0d89\u0000\u0dc0\u0000\u0df7\u0000\u0e2e\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0181\u0000\u0785\u0000\u0181\u0000\u0861\u0000\u0181\u0000\u0a87\u0000\u0e65\u0000\u0a50\u0000\u0181\u0000\u0e9c\u0000\u0ed3\u0000\u025d\u0000\u025d\u0000\u025d\u0000\u0f0a\u0000\u0f41\u0000\u0f78\u0000\u025d\u0000\u0faf\u0000\u0fe6\u0000\u101d\u0000\u025d\u0000\u1054\u0000\u108b\u0000\u10c2\u0000\u10f9\u0000\u1130\u0000\u0181\u0000\u1167\u0000\u119e\u0000\u11d5\u0000\u120c\u0000\u1243\u0000\u127a\u0000\u12b1\u0000\u12e8\u0000\u131f\u0000\u1356\u0000\u138d\u0000\u025d\u0000\u025d\u0000\u13c4\u0000\u119e\u0000\u13fb\u0000\u025d\u0000\u1432\u0000\u1469\u0000\u14a0\u0000\u025d\u0000\u025d\u0000\u14d7\u0000\u025d\u0000\u025d\u0000\u150e\u0000\u025d\u0000\u025d\u0000\u025d\u0000\u1545\u0000\u157c\u0000\u15b3\u0000\u025d"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    return-object v0
.end method

.method private static zzUnpackTrans(Ljava/lang/String;I[I)I
    .registers 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v1, p1

    :goto_0
    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v6, v5, -0x1

    aput v6, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static zzUnpackTrans()[I
    .registers 3

    const/16 v0, 0x15ea

    new-array v0, v0, [I

    const-string v1, "\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\r\u0001\u000f\u0001\u0010\u0002\r\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0015\u0001\u0016\u0001\u0017\u0001\u0018\u0001\u0019\u0001\r\u0001\u001a\u0001\u001b\u0001\r\u0001\u001c\u0001\u001d\u0001\u001e\u0001\r\u0001\u001f\u0002\r\u0001 \u0001!\u0001\"\u0001#\u0001\u0008\u0001$\u0001%\u0001&\u0001\'\u0001(\u0001)\u0001*\u0001+\u0001,\u0001-\u0001.\u0001/\u00010\u00011\u00012\u0001\u0008\u0001\r\u0001\u0000\u00033\u00014)3\u00015\u00083\u0001\u0000\u00026\u00017\u0001826\u0001\u0000\u00029\u0001:\u0001;29\u0001\u0000\u0003<\u0001=)<\u0001>\u0008<\u0001\u0000\u0002?\u0001@\u0001A\u001d?\u0001B\u0012?\u0001C\u0001?\u0001\u0000\u0002?\u0001D\u0001E\u001e?\u0001F\u0011?\u0001G\u0001?9\u0000\u0001\t7\u0000\u0001\n8\u0000\u0001H\u0008\u0000\u0001I.\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0012\r\u0014\u0000\u0001\r\u0007\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0002\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001\u000e\u0001J\u0001\u0000\u0001\u000e\u0001L\u0001\u0000\u0001K\u0007\u0000\u0001J(\u0000\u0001M\u0002\u0000\u0001M\u0002\u0000\u0001N7\u0000\u0001O7\u0000\u0001P-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001Q\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001R\u0002\r\u0001S\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001T\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001U\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001V\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001W\u0006\r\u0001X\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001Y\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001Z\n\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001[\t\r\u0001\\\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001]\u0006\r\u0001^\u0004\r\u0001_\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001`\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001a\u000b\r\u0001b\u0001\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0010\r\u0001c\u0001\r\u0014\u0000\u0001\r%\u0000\u0001d\u001f\u0000\u0001e6\u0000\u0001f6\u0000\u0001g+\u0000\u00013A\u0000\u0001h\u001f\u0000\u0001i\u000b\u0000\u000176\u0000\u0001:6\u0000\u0001<A\u0000\u0001j\u001f\u0000\u0001k\u000b\u0000\u0001@U\u0000\u0001?\u0017\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0003\u0000\u0002?\n\u0000\u0001?\u0006\u0000\u0002?\u0003\u0000\u0001DV\u0000\u0001?\u0016\u0000\u0001?\u0001\u0000\u0001?\n\u0000\u0002?\u0001\u0000\u0002?\u0006\u0000\u0001?\u0002\u0000\u0001?\u0004\u0000\u0001?\n\u0000\u0001?\u0006\u0000\u0002?\u0007\u0000\u0001M\u0001\u0000\u0001l\u0001M\u0004\u0000\u0001l.\u0000\u0001m\u0002\u0000\u0001m3\u0000\u0002n\u0001\u0000\u0001n\u0001\u0000\u0001n\u0003\u0000\u0001n\u0001\u0000\u0002n\u0001\u0000\u0001n\u0005\u0000\u0001n\u0001\u0000\u0001n \u0000\u0001M\u0002\u0000\u0001M9\u0000\u0001o.\u0000\u0001p\t\u0000\u0001q-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001r\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001s\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001t\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001u\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001v\u0001w\u0002\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0002\r\u0001x\u000f\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001y\u0008\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001z\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001{\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001|\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001}\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001~\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000c\r\u0001\u007f\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0080\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0081\u0007\r\u0014\u0000\u0001\r\u0007\u0000\u0001m\u0001J\u0001\u0000\u0001m\n\u0000\u0001J&\u0000\u0001\u0082\u0008\u0000\u0001p)\u0000\u0002\u0083\u0001\u0084\u0001\u0085\n\u0083\u0001q(\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0086\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000c\r\u0001\u0087\u0005\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0088\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0089\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u008a\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\t\r\u0001\u008b\u0008\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\r\r\u0001\u008c\u0004\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u008d\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u008e\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u008f\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001\u0090\t\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u00853\u0083\u0001\u0000\u0001\u0091\u000c\u0000\u0001\u0092)\u0000\u0001\u0091\u0001\u0084\u000b\u0000\u0001\u0092-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0006\r\u0001\u0093\u000b\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0004\r\u0001\u0094\r\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\u0095\u0011\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u0096\u0007\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001\u0097\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u0098\u000c\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u0099\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0008\r\u0001\u009a\t\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0005\r\u0001\u009b\u000c\r\u0014\u0000\u0001\r\u000f\u0000\u0001\u009c-\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u009d\u0010\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000e\r\u0001\u009e\u0003\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u000b\r\u0001\u009f\u0006\r\u0014\u0000\u0001\r\u0006\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\n\r\u0001\u00a0\u0007\r\u0014\u0000\u0001\r\u0001\u0000\u0002\u0083\u0001\u0084\u0001\u0085\u0001\u00a12\u0083\u0005\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0007\r\u0001\u00a2\n\r\u0014\u0000\u0001\r\u0003\u0000\u0001\u0084\u0001\u00858\u0000\u0003\r\u0001\u0000\u0003\r\u0003\u0000\u0001\r\u0001\u00a3\u0010\r\u0014\u0000\u0001\r\u0001\u0000"

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

    :goto_0
    :pswitch_0
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

    if-ne v3, v4, :cond_0

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    :cond_0
    move v3, v1

    move v6, v2

    move v4, v5

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_1

    invoke-static {v0, v7, v3}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int v5, v2, v7

    move v2, v1

    :goto_2
    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    aget v1, v10, v1

    aget-char v7, v8, v2

    add-int/2addr v1, v7

    aget v1, v9, v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_4

    move v1, v3

    :goto_3
    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzStartRead:I

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtEOF:Z

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzDoEOF()V

    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    :goto_4
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzAtEOF:Z

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    move v1, v3

    goto :goto_3

    :cond_2
    iput v7, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iput v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzRefill()Z

    move-result v1

    iget v2, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzCurrentPos:I

    iget v4, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzMarkedPos:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    iget v3, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzEndRead:I

    if-eqz v1, :cond_3

    const/4 v2, -0x1

    move v1, v3

    goto :goto_3

    :cond_3
    invoke-static {v0, v2, v3}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v2

    move v2, v1

    goto :goto_2

    :cond_4
    iput v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    iget v1, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    aget v1, v11, v1

    and-int/lit8 v7, v1, 0x1

    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    iget v6, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzState:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_9

    move v4, v5

    move v1, v3

    goto :goto_3

    :cond_5
    if-gez v6, :cond_6

    :goto_5
    packed-switch v6, :pswitch_data_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzScanError(I)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/myopicmobile/textwarrior/common/LuaLexer;->ZZ_ACTION:[I

    aget v6, v2, v6

    goto :goto_5

    :pswitch_1
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WRONG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_2
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_3
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NEWLINE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_4
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LBRACK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_5
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NAME:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_6
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NUMBER:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_7
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->PLUS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_8
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_9
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ASSIGN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_a
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->MINUS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_b
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_c
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_d
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->GETN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto :goto_4

    :pswitch_e
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->GT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_10
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->MULT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_11
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->MOD:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_12
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DIV:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_13
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LPAREN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_14
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RPAREN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_15
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RBRACK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_16
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_17
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RCURLY:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_18
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->COMMA:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_19
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SEMI:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_1a
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->COLON:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_1b
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->EXP:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_1c
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_1d
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_1e
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NL_BEFORE_LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_1f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SHORTCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_21
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_22
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WRONG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->STRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WRONG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_26
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->setCurrentExtQuoteStart(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING_BEGIN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_27
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->CONCAT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_28
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->EQ:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_29
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->advance()Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_2a
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->DO:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_2b
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->OR:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_2c
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->IN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_2d
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->IF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_2e
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->SHEBANG:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_2f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->GE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_30
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_31
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_32
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->isCurrentExtQuoteStart(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->resetCurrentExtQuoteStart()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING_END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGSTRING:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_33
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->isCurrentExtQuoteStart(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->resetCurrentExtQuoteStart()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT_END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_34
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELLIPSIS:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_35
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->AND:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_36
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NOT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_37
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->NIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_38
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->END:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_39
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FOR:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_3a
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->longCommentOrStringHandler:Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/common/LuaLexer$ExtendedSyntaxStrCommentHandler;->setCurrentExtQuoteStart(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yybegin(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LONGCOMMENT_BEGIN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_3b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->yypushback(I)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LUADOC_COMMENT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_3c
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_3d
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->TRUE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_3e
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->THEN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_3f
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->BREAK:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_40
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->LOCAL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_41
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FALSE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_42
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->UNTIL:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_43
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->WHILE:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_44
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->RETURN:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_45
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->REPEAT:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_46
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->ELSEIF:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :pswitch_47
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;->FUNCTION:Lcom/myopicmobile/textwarrior/common/LuaTokenTypes;

    goto/16 :goto_4

    :cond_9
    move v4, v5

    move v7, v5

    goto/16 :goto_1

    :cond_a
    move v7, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
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

    if-le p1, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzScanError(I)V

    :cond_0
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

    if-le v0, v2, :cond_0

    new-array v0, v2, [C

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/LuaLexer;->zzBuffer:[C

    :cond_0
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
