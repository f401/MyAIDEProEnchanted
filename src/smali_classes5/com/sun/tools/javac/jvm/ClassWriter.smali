.class public Lcom/sun/tools/javac/jvm/ClassWriter;
.super Lcom/sun/tools/javac/jvm/ClassFile;
.source "ClassWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;,
        Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$AppendFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$ChopFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$FullFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame$SameLocals1StackItemFrame;,
        Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;
    }
.end annotation


# static fields
.field static final DATA_BUF_SIZE:I = 0xfff0

.field static final FULL_FRAME:I = 0xff

.field static final MAX_LOCAL_LENGTH_DIFF:I = 0x4

.field static final POOL_BUF_SIZE:I = 0x1fff0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_FRAME_SIZE:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_EXTENDED:I = 0xf7

.field protected static final classWriterKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/jvm/ClassWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final flagName:[Ljava/lang/String;


# instance fields
.field awriter:Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;

.field databuf:Lcom/sun/tools/javac/util/ByteBuffer;

.field debugstackmap:Z

.field private final dumpClassModifiers:Z

.field private final dumpFieldModifiers:Z

.field private final dumpInnerClassModifiers:Z

.field private final dumpMethodModifiers:Z

.field private emitSourceFile:Z

.field private final fileManager:Ljavax/tools/JavaFileManager;

.field private genCrt:Z

.field innerClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field innerClassesQueue:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/sun/tools/javac/util/Log;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field private final options:Lcom/sun/tools/javac/util/Options;

.field pool:Lcom/sun/tools/javac/jvm/Pool;

.field poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

.field private retrofit:Z

.field private scramble:Z

.field private scrambleAll:Z

.field sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

.field private source:Lcom/sun/tools/javac/code/Source;

.field private final syms:Lcom/sun/tools/javac/code/Symtab;

.field private target:Lcom/sun/tools/javac/jvm/Target;

.field private types:Lcom/sun/tools/javac/code/Types;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassWriter;->classWriterKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 266
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PUBLIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PRIVATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "PROTECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STATIC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "FINAL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SUPER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "VOLATILE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TRANSIENT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NATIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ABSTRACT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "STRICTFP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/tools/javac/jvm/ClassWriter;->flagName:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/ClassFile;-><init>()V

    .line 129
    new-instance v0, Lcom/sun/tools/javac/util/ByteBuffer;

    const v3, 0xfff0

    invoke-direct {v0, v3}, Lcom/sun/tools/javac/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    .line 134
    new-instance v0, Lcom/sun/tools/javac/util/ByteBuffer;

    const v3, 0x1fff0

    invoke-direct {v0, v3}, Lcom/sun/tools/javac/util/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    .line 139
    new-instance v0, Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ByteBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    .line 908
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;-><init>(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->awriter:Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;

    .line 195
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter;->classWriterKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 197
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    .line 198
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    .line 199
    invoke-static {p1}, Lcom/sun/tools/javac/code/Symtab;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 200
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    .line 201
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 202
    invoke-static {p1}, Lcom/sun/tools/javac/code/Source;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->source:Lcom/sun/tools/javac/code/Source;

    .line 203
    invoke-static {p1}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    .line 204
    const-class v0, Ljavax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/tools/JavaFileManager;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->fileManager:Ljavax/tools/JavaFileManager;

    .line 206
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->VERBOSE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->verbose:Z

    .line 207
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    const-string v3, "-scramble"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->scramble:Z

    .line 208
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    const-string v3, "-scrambleAll"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->scrambleAll:Z

    .line 209
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    const-string v3, "-retrofit"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->retrofit:Z

    .line 210
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->XJCOV:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->genCrt:Z

    .line 211
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    const-string v3, "debugstackmap"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    .line 213
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->isUnset(Lcom/sun/tools/javac/main/OptionName;)Z

    move-result v0

    if-nez v0, :cond_b3

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v3, Lcom/sun/tools/javac/main/OptionName;->G_CUSTOM:Lcom/sun/tools/javac/main/OptionName;

    .line 214
    const-string v4, "source"

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/Options;->isSet(Lcom/sun/tools/javac/main/OptionName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    :cond_b3
    move v0, v2

    :goto_b4
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->emitSourceFile:Z

    .line 216
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->options:Lcom/sun/tools/javac/util/Options;

    const-string v3, "dumpmodifiers"

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    if-eqz v3, :cond_f4

    .line 218
    const/16 v0, 0x63

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_f4

    move v0, v2

    :goto_c9
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpClassModifiers:Z

    .line 219
    if-eqz v3, :cond_f6

    .line 220
    const/16 v0, 0x66

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_f6

    move v0, v2

    :goto_d6
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpFieldModifiers:Z

    .line 221
    if-eqz v3, :cond_f8

    .line 222
    const/16 v0, 0x69

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_f8

    move v0, v2

    :goto_e3
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpInnerClassModifiers:Z

    .line 223
    if-eqz v3, :cond_fa

    .line 224
    const/16 v0, 0x6d

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_fa

    :goto_ef
    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpMethodModifiers:Z

    .line 225
    return-void

    :cond_f2
    move v0, v1

    .line 214
    goto :goto_b4

    :cond_f4
    move v0, v1

    .line 218
    goto :goto_c9

    :cond_f6
    move v0, v1

    .line 220
    goto :goto_d6

    :cond_f8
    move v0, v1

    .line 222
    goto :goto_e3

    :cond_fa
    move v2, v1

    .line 224
    goto :goto_ef
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/jvm/ClassWriter;)Lcom/sun/tools/javac/util/Names;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    return-object v0
.end method

.method public static flagNames(J)Ljava/lang/String;
    .registers 10

    const-wide/16 v6, 0x0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    const/4 v0, 0x0

    .line 253
    const-wide/16 v2, 0xfff

    and-long/2addr v2, p0

    .line 254
    :goto_b
    cmp-long v4, v2, v6

    if-eqz v4, :cond_27

    .line 255
    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_22

    .line 256
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    sget-object v4, Lcom/sun/tools/javac/jvm/ClassWriter;->flagName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_22
    const/4 v4, 0x1

    shr-long/2addr v2, v4

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 262
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassWriter;
    .registers 2

    .line 185
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter;->classWriterKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/ClassWriter;

    .line 186
    if-nez v0, :cond_f

    .line 187
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/jvm/ClassWriter;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 188
    :cond_f
    return-object v0
.end method

.method private needsLocalVariableTypeEntry(Lcom/sun/tools/javac/code/Type;)Z
    .registers 4

    .line 1155
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1156
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 1155
    :goto_13
    return v0

    .line 1156
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method adjustFlags(J)I
    .registers 10

    const-wide/16 v4, 0x0

    .line 1707
    long-to-int v0, p1

    .line 1708
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useSyntheticFlag()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1709
    and-int/lit16 v0, v0, -0x1001

    .line 1710
    :cond_14
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useEnumFlag()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1711
    and-int/lit16 v0, v0, -0x4001

    .line 1712
    :cond_25
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useAnnotationFlag()Z

    move-result v1

    if-nez v1, :cond_36

    .line 1713
    and-int/lit16 v0, v0, -0x2001

    .line 1715
    :cond_36
    const-wide v2, 0x80000000L

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useBridgeFlag()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1716
    or-int/lit8 v0, v0, 0x40

    .line 1717
    :cond_4a
    const-wide v2, 0x400000000L

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useVarargsFlag()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1718
    or-int/lit16 v0, v0, 0x80

    .line 1719
    :cond_5e
    return v0
.end method

.method assembleClassSig(Lcom/sun/tools/javac/code/Type;)V
    .registers 6

    .line 403
    check-cast p1, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 404
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 405
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 406
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 408
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_27

    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-ne v2, v3, :cond_8c

    :cond_27
    const/4 v2, 0x1

    .line 411
    :goto_28
    if-eqz v2, :cond_30

    .line 412
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 413
    :cond_30
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleClassSig(Lcom/sun/tools/javac/code/Type;)V

    .line 414
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 415
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Name;->startsWith(Lcom/sun/tools/javac/util/Name;)Z

    move-result v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 416
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    if-eqz v2, :cond_8e

    .line 417
    iget-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->getByteLength()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/sun/tools/javac/util/Name;->subName(II)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 416
    :goto_69
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendName(Lcom/sun/tools/javac/util/Name;)V

    .line 422
    :goto_6c
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 423
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 424
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/util/List;)V

    .line 425
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 427
    :cond_8b
    return-void

    .line 408
    :cond_8c
    const/4 v2, 0x0

    goto :goto_28

    .line 418
    :cond_8e
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_69

    .line 420
    :cond_91
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->externalize(Lcom/sun/tools/javac/util/Name;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([B)V

    goto :goto_6c
.end method

.method assembleParamsSig(Lcom/sun/tools/javac/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    const/16 v6, 0x3a

    .line 436
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 437
    :goto_9
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 438
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$TypeVar;

    .line 439
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$TypeVar;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendName(Lcom/sun/tools/javac/util/Name;)V

    .line 440
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->getBounds(Lcom/sun/tools/javac/code/Type$TypeVar;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 441
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3a

    .line 442
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 444
    :cond_3a
    :goto_3a
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 445
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 446
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 444
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_3a

    .line 437
    :cond_50
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_9

    .line 449
    :cond_53
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 450
    return-void
.end method

.method assembleSig(Lcom/sun/tools/javac/code/Type;)V
    .registers 5

    const/16 v2, 0x3b

    .line 303
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    packed-switch v0, :pswitch_data_142

    .line 390
    :pswitch_7  #0xd, 0x11, 0x12, 0x13, 0x14, 0x15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "typeSig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 387
    :pswitch_20  #0x16, 0x17
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    check-cast p1, Lcom/sun/tools/javac/jvm/UninitializedType;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/UninitializedType;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 306
    :cond_2d
    :goto_2d
    return-void

    .line 379
    :pswitch_2e  #0x10
    check-cast p1, Lcom/sun/tools/javac/code/Type$ForAll;

    .line 380
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleParamsSig(Lcom/sun/tools/javac/util/List;)V

    .line 381
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2d

    .line 355
    :pswitch_3b  #0xf
    check-cast p1, Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 356
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/BoundKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_60

    const/4 v1, 0x3

    if-ne v0, v1, :cond_58

    .line 366
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_2d

    .line 369
    :cond_58
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 362
    :cond_60
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 363
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2d

    .line 358
    :cond_6d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 359
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2d

    .line 374
    :pswitch_7a  #0xe
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 375
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendName(Lcom/sun/tools/javac/util/Name;)V

    .line 376
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_2d

    .line 342
    :pswitch_90  #0xc
    check-cast p1, Lcom/sun/tools/javac/code/Type$MethodType;

    .line 343
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 344
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/util/List;)V

    .line 345
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 346
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 347
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->hasTypeVar(Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 348
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_b5
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 349
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 350
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 348
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_b5

    .line 337
    :pswitch_cd  #0xb
    check-cast p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    .line 338
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 339
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    :try_start_d8
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dd

    goto/16 :goto_2d

    :catchall_dd
    move-exception v0

    throw v0

    .line 332
    :pswitch_df  #0xa
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleClassSig(Lcom/sun/tools/javac/code/Type;)V

    .line 334
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 329
    :pswitch_f0  #0x9
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 326
    :pswitch_f9  #0x8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 323
    :pswitch_102  #0x7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 320
    :pswitch_10b  #0x6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 317
    :pswitch_114  #0x5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 314
    :pswitch_11d  #0x4
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 308
    :pswitch_126  #0x3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 311
    :pswitch_12f  #0x2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 305
    :pswitch_138  #0x1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_2d

    .line 303
    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_138  #00000001
        :pswitch_12f  #00000002
        :pswitch_126  #00000003
        :pswitch_11d  #00000004
        :pswitch_114  #00000005
        :pswitch_10b  #00000006
        :pswitch_102  #00000007
        :pswitch_f9  #00000008
        :pswitch_f0  #00000009
        :pswitch_df  #0000000a
        :pswitch_cd  #0000000b
        :pswitch_90  #0000000c
        :pswitch_7  #0000000d
        :pswitch_7a  #0000000e
        :pswitch_3b  #0000000f
        :pswitch_2e  #00000010
        :pswitch_7  #00000011
        :pswitch_7  #00000012
        :pswitch_7  #00000013
        :pswitch_7  #00000014
        :pswitch_7  #00000015
        :pswitch_20  #00000016
        :pswitch_20  #00000017
    .end packed-switch
.end method

.method assembleSig(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 431
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 432
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 431
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 433
    :cond_10
    return-void
.end method

.method beginAttrs()I
    .registers 3

    .line 636
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 637
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v0, v0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    return v0
.end method

.method endAttr(I)V
    .registers 5

    .line 628
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    add-int/lit8 v1, p1, -0x4

    iget v2, v0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    sub-int/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->putInt(Lcom/sun/tools/javac/util/ByteBuffer;II)V

    .line 629
    return-void
.end method

.method endAttrs(II)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v0, v1, p2}, Lcom/sun/tools/javac/jvm/ClassWriter;->putChar(Lcom/sun/tools/javac/util/ByteBuffer;II)V

    .line 645
    return-void
.end method

.method enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 6

    .line 929
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_89

    .line 933
    :try_start_8
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->complete()V
    :try_end_b
    .catch Lcom/sun/tools/javac/code/Symbol$CompletionFailure; {:try_start_8 .. :try_end_b} :catch_65

    .line 937
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    .line 954
    :cond_13
    :goto_13
    return-void

    .line 939
    :cond_14
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    .line 940
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    if-eqz v0, :cond_2a

    .line 941
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 943
    :cond_2a
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 944
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    .line 945
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    .line 946
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    if-nez v0, :cond_5a

    .line 947
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    .line 948
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lcom/sun/tools/javac/util/ListBuffer;

    .line 949
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->InnerClasses:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    .line 951
    :cond_5a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 952
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_13

    .line 934
    :catch_65
    move-exception v0

    .line 935
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$CompletionFailure;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 936
    throw v0

    .line 930
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected intersection type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method fieldName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;
    .registers 8

    const-wide/16 v4, 0x0

    .line 589
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->scramble:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    :cond_11
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->scrambleAll:Z

    if-eqz v0, :cond_3e

    .line 590
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_3e

    .line 591
    :cond_20
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 593
    :goto_3d
    return-object v0

    :cond_3e
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_3d
.end method

.method getLastModified(Ljavax/tools/FileObject;)J
    .registers 5

    .line 1723
    :try_start_0
    invoke-interface {p1}, Ljavax/tools/FileObject;->getLastModified()J
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v0

    .line 1728
    return-wide v0

    .line 1726
    :catch_5
    move-exception v0

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRT: couldn\'t get source file modification date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method hasTypeVar(Lcom/sun/tools/javac/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    .line 395
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 396
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 399
    :goto_11
    return v0

    .line 397
    :cond_12
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 399
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method nameType(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;
    .registers 5

    .line 600
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->fieldName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 601
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->retrofit:Z

    if-eqz v0, :cond_14

    .line 602
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 603
    :goto_e
    new-instance v2, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    invoke-direct {v2, v1, v0}, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;)V

    .line 600
    return-object v2

    .line 603
    :cond_14
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_e
.end method

.method putChar(Lcom/sun/tools/javac/util/ByteBuffer;II)V
    .registers 7

    .line 280
    iget-object v0, p1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    .line 281
    iget-object v0, p1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int/lit8 v1, p2, 0x1

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 282
    return-void
.end method

.method putInt(Lcom/sun/tools/javac/util/ByteBuffer;II)V
    .registers 7

    .line 289
    iget-object v0, p1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    .line 290
    iget-object v0, p1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v2, p3, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 291
    iget-object v0, p1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 292
    iget-object v0, p1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    add-int/lit8 v1, p2, 0x3

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    return-void
.end method

.method typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;
    .registers 4

    .line 456
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v0, v0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 458
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 459
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->toName(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ByteBuffer;->reset()V

    .line 462
    return-object v0

    .line 456
    :cond_1b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method writeAttr(Lcom/sun/tools/javac/util/Name;)I
    .registers 4

    .line 619
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 620
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendInt(I)V

    .line 621
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v0, v0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    return v0
.end method

.method public writeClass(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)Ljavax/tools/JavaFileObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;,
            Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;
        }
    .end annotation

    .line 1553
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->fileManager:Ljavax/tools/JavaFileManager;

    sget-object v1, Ljavax/tools/StandardLocation;->CLASS_OUTPUT:Ljavax/tools/StandardLocation;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    .line 1555
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1554
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/tools/JavaFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 1558
    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 1560
    :try_start_16
    invoke-virtual {p0, v2, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeClassFile(Ljava/io/OutputStream;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 1561
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->verbose:Z

    if-eqz v0, :cond_2a

    .line 1562
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    const-string v3, "wrote.file"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/sun/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    :cond_2a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_2e

    .line 1573
    return-object v1

    .line 1566
    :catchall_2e
    move-exception v0

    if-eqz v2, :cond_37

    .line 1568
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1569
    invoke-interface {v1}, Ljavax/tools/JavaFileObject;->delete()Z

    .line 1570
    :cond_37
    throw v0
.end method

.method public writeClassFile(Ljava/io/OutputStream;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;,
            Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;
        }
    .end annotation

    .line 1581
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    const-wide/32 v2, 0x1000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f5

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1582
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ByteBuffer;->reset()V

    .line 1583
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ByteBuffer;->reset()V

    .line 1584
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ByteBuffer;->reset()V

    .line 1585
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 1586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    .line 1587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lcom/sun/tools/javac/util/ListBuffer;

    .line 1589
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1590
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 1591
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v6

    .line 1593
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v0

    .line 1594
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_4f

    or-int/lit8 v0, v0, 0x1

    .line 1595
    :cond_4f
    and-int/lit16 v0, v0, 0x7e11

    and-int/lit16 v0, v0, -0x801

    .line 1596
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_59

    or-int/lit8 v0, v0, 0x20

    .line 1597
    :cond_59
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->isInner()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    and-int/lit8 v0, v0, -0x11

    .line 1598
    :cond_69
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpClassModifiers:Z

    if-eqz v1, :cond_ad

    .line 1599
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1600
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLASSFILE  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v8, v0

    invoke-static {v8, v9}, Lcom/sun/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    :cond_ad
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1605
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1606
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v0, v5, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_f8

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, v5, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    :goto_cd
    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1607
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move-object v1, v2

    .line 1608
    :goto_da
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 1609
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1608
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_da

    .line 1581
    :cond_f5
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 1606
    :cond_f8
    const/4 v0, 0x0

    goto :goto_cd

    .line 1610
    :cond_fa
    const/4 v3, 0x0

    .line 1611
    const/4 v1, 0x0

    .line 1612
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v4, v0

    :goto_103
    if-eqz v4, :cond_13d

    .line 1613
    iget-object v0, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_134

    const/4 v7, 0x4

    if-eq v0, v7, :cond_130

    const/16 v7, 0x10

    if-eq v0, v7, :cond_11b

    .line 1624
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    move v0, v1

    .line 1612
    :goto_117
    iget-object v4, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move v1, v0

    goto :goto_103

    .line 1618
    :cond_11b
    iget-object v0, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide v10, 0x2000000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_2d7

    add-int/lit8 v0, v1, 0x1

    goto :goto_117

    .line 1615
    :cond_130
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .line 1616
    goto :goto_117

    .line 1621
    :cond_134
    iget-object v0, v4, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    move v0, v1

    .line 1622
    goto :goto_117

    .line 1628
    :cond_13d
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_157

    .line 1629
    iget-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->trans_local:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_147
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_157

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1630
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    goto :goto_147

    .line 1634
    :cond_157
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1635
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeFields(Lcom/sun/tools/javac/code/Scope$Entry;)V

    .line 1636
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1637
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeMethods(Lcom/sun/tools/javac/code/Scope$Entry;)V

    .line 1639
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v4

    .line 1640
    const/4 v1, 0x0

    .line 1642
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-nez v0, :cond_188

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-eqz v0, :cond_1a4

    :cond_188
    const/4 v0, 0x1

    :goto_189
    move-object v3, v2

    .line 1644
    :goto_18a
    if-nez v0, :cond_1a8

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_1a8

    .line 1645
    iget-object v0, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-eqz v0, :cond_1a6

    const/4 v0, 0x1

    .line 1644
    :goto_1a1
    iget-object v3, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_18a

    .line 1642
    :cond_1a4
    const/4 v0, 0x0

    goto :goto_189

    .line 1645
    :cond_1a6
    const/4 v0, 0x0

    goto :goto_1a1

    .line 1646
    :cond_1a8
    if-eqz v0, :cond_2d4

    .line 1647
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1648
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->Signature:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 1649
    invoke-virtual {v6}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    if-eqz v0, :cond_1c4

    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleParamsSig(Lcom/sun/tools/javac/util/List;)V

    .line 1650
    :cond_1c4
    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 1651
    :goto_1c7
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d7

    .line 1652
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->assembleSig(Lcom/sun/tools/javac/code/Type;)V

    .line 1651
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1c7

    .line 1653
    :cond_1d7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/util/ByteBuffer;->toName(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1654
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->sigbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ByteBuffer;->reset()V

    .line 1655
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1656
    const/4 v0, 0x1

    .line 1659
    :goto_1f3
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    if-eqz v1, :cond_21f

    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->emitSourceFile:Z

    if-eqz v1, :cond_21f

    .line 1660
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->SourceFile:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 1665
    iget-object v2, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-static {v2}, Lcom/sun/tools/javac/file/BaseFileObject;->getSimpleName(Ljavax/tools/FileObject;)Ljava/lang/String;

    move-result-object v2

    .line 1666
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v5, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v6, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1667
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1668
    add-int/lit8 v0, v0, 0x1

    .line 1671
    :cond_21f
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->genCrt:Z

    if-eqz v1, :cond_271

    .line 1673
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->SourceID:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 1674
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v6, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {p0, v6}, Lcom/sun/tools/javac/jvm/ClassWriter;->getLastModified(Ljavax/tools/FileObject;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1675
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1676
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->CompilationID:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 1679
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v3, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1680
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1681
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 1684
    :cond_271
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeFlagAttrs(J)I

    move-result v1

    .line 1685
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeJavaAnnotations(Lcom/sun/tools/javac/util/List;)I

    move-result v2

    .line 1686
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeEnclosingMethodAttribute(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1688
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const v2, -0x35014542  # -8346975.0f

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendInt(I)V

    .line 1689
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Target;->minorVersion:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1690
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Target;->majorVersion:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1692
    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writePool(Lcom/sun/tools/javac/jvm/Pool;)V

    .line 1694
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClasses:Ljava/util/Set;

    if-eqz v1, :cond_2b0

    .line 1695
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeInnerClasses()V

    .line 1696
    add-int/lit8 v0, v0, 0x1

    .line 1698
    :cond_2b0
    invoke-virtual {p0, v4, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    .line 1700
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, v1, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v3, v3, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    .line 1701
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/util/ByteBuffer;->elems:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v2, v2, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1703
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->pool:Lcom/sun/tools/javac/jvm/Pool;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 1704
    return-void

    :cond_2d4
    move v0, v1

    goto/16 :goto_1f3

    :cond_2d7
    move v0, v1

    goto/16 :goto_117
.end method

.method writeCode(Lcom/sun/tools/javac/jvm/Code;)V
    .registers 15

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1052
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p1, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1053
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p1, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1054
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p1, Lcom/sun/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendInt(I)V

    .line 1055
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code;->code:[B

    iget v2, p1, Lcom/sun/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    .line 1056
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code;->catchInfo:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1057
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code;->catchInfo:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1058
    :goto_32
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_53

    move v2, v3

    .line 1060
    :goto_39
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [C

    array-length v0, v0

    if-ge v2, v0, :cond_4f

    .line 1061
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [C

    aget-char v0, v0, v2

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1060
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    .line 1059
    :cond_4f
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_32

    .line 1063
    :cond_53
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v6

    .line 1066
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f8

    .line 1067
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->LineNumberTable:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v5

    .line 1068
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1069
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 1070
    :goto_79
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_9a

    move v2, v3

    .line 1072
    :goto_80
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [C

    array-length v0, v0

    if-ge v2, v0, :cond_96

    .line 1073
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [C

    aget-char v0, v0, v2

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1072
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_80

    .line 1071
    :cond_96
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_79

    .line 1074
    :cond_9a
    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    move v0, v4

    .line 1078
    :goto_9e
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->genCrt:Z

    if-eqz v1, :cond_c6

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    if-eqz v1, :cond_c6

    .line 1079
    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    .line 1080
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->CharacterRangeTable:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v2

    .line 1081
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v5

    .line 1082
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v8, p1, Lcom/sun/tools/javac/jvm/Code;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    iget-object v9, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1, v7, v8, v9}, Lcom/sun/tools/javac/jvm/CRTable;->writeCRT(Lcom/sun/tools/javac/util/ByteBuffer;Lcom/sun/tools/javac/util/Position$LineMap;Lcom/sun/tools/javac/util/Log;)I

    move-result v1

    .line 1083
    invoke-virtual {p0, v5, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    .line 1084
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1085
    add-int/lit8 v0, v0, 0x1

    .line 1091
    :cond_c6
    iget v1, p1, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    if-lez v1, :cond_1f4

    .line 1092
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->LocalVariableTable:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v7

    .line 1093
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v2, p1, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v2, v3

    move v1, v3

    .line 1095
    :goto_db
    iget v5, p1, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    if-ge v2, v5, :cond_14c

    .line 1096
    iget-object v5, p1, Lcom/sun/tools/javac/jvm/Code;->varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v8, v5, v2

    .line 1099
    iget-char v5, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    if-ltz v5, :cond_148

    iget-char v5, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    iget v9, p1, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-gt v5, v9, :cond_148

    move v5, v4

    :goto_ee
    invoke-static {v5}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1101
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-char v9, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    invoke-virtual {v5, v9}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1102
    iget-char v5, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    if-ltz v5, :cond_14a

    iget-char v5, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    iget-char v9, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    add-int/2addr v5, v9

    iget v9, p1, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-gt v5, v9, :cond_14a

    move v5, v4

    :goto_106
    invoke-static {v5}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1104
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-char v9, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    invoke-virtual {v5, v9}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1105
    iget-object v5, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1106
    iget-object v9, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v10, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v11, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v10, v11}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1107
    iget-object v9, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v9}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v9

    .line 1108
    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v5}, Lcom/sun/tools/javac/jvm/ClassWriter;->needsLocalVariableTypeEntry(Lcom/sun/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_12f

    .line 1109
    add-int/lit8 v1, v1, 0x1

    .line 1110
    :cond_12f
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v10, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {p0, v9}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1111
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-char v8, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->reg:C

    invoke-virtual {v5, v8}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1095
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    :cond_148
    move v5, v3

    .line 1099
    goto :goto_ee

    :cond_14a
    move v5, v3

    .line 1102
    goto :goto_106

    .line 1113
    :cond_14c
    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1114
    add-int/lit8 v2, v0, 0x1

    move v5, v1

    .line 1117
    :goto_152
    if-lez v5, :cond_1f2

    .line 1118
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->LocalVariableTypeTable:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v7

    .line 1119
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v0, v3

    move v1, v3

    .line 1122
    :goto_163
    iget v8, p1, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    if-ge v1, v8, :cond_1ae

    .line 1123
    iget-object v8, p1, Lcom/sun/tools/javac/jvm/Code;->varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v8, v8, v1

    .line 1124
    iget-object v9, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 1125
    iget-object v10, v9, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-direct {p0, v10}, Lcom/sun/tools/javac/jvm/ClassWriter;->needsLocalVariableTypeEntry(Lcom/sun/tools/javac/code/Type;)Z

    move-result v10

    if-nez v10, :cond_178

    .line 1122
    :goto_175
    add-int/lit8 v1, v1, 0x1

    goto :goto_163

    .line 1127
    :cond_178
    add-int/lit8 v0, v0, 0x1

    .line 1129
    iget-object v10, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-char v11, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    invoke-virtual {v10, v11}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1130
    iget-object v10, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-char v11, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    invoke-virtual {v10, v11}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1131
    iget-object v10, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v11, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v12, v9, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v11, v12}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1132
    iget-object v10, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v11, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v9, v9, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v9}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1133
    iget-object v9, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-char v8, v8, Lcom/sun/tools/javac/jvm/Code$LocalVar;->reg:C

    invoke-virtual {v9, v8}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_175

    .line 1135
    :cond_1ae
    if-ne v0, v5, :cond_1f0

    :goto_1b0
    invoke-static {v4}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1136
    invoke-virtual {p0, v7}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1137
    add-int/lit8 v0, v2, 0x1

    .line 1140
    :goto_1b8
    iget v1, p1, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    if-lez v1, :cond_1ec

    .line 1141
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v1, :cond_1d8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack map for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1142
    :cond_1d8
    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->getAttributeName(Lcom/sun/tools/javac/util/Names;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 1143
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMap(Lcom/sun/tools/javac/jvm/Code;)V

    .line 1144
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1145
    add-int/lit8 v0, v0, 0x1

    .line 1147
    :cond_1ec
    invoke-virtual {p0, v6, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    .line 1148
    return-void

    :cond_1f0
    move v4, v3

    goto :goto_1b0

    :cond_1f2
    move v0, v2

    goto :goto_1b8

    :cond_1f4
    move v5, v3

    move v2, v0

    goto/16 :goto_152

    :cond_1f8
    move v0, v3

    goto/16 :goto_9e
.end method

.method writeCompoundAttribute(Lcom/sun/tools/javac/code/Attribute$Compound;)V
    .registers 7

    .line 914
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 915
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 916
    iget-object v0, p1, Lcom/sun/tools/javac/code/Attribute$Compound;->values:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sun/tools/javac/util/Pair;

    .line 917
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 918
    iget-object v0, v1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Attribute;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->awriter:Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    goto :goto_22

    .line 920
    :cond_4a
    return-void
.end method

.method writeEnclosingMethodAttribute(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)I
    .registers 8

    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->hasEnclosingMethodAttribute()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v0, v4, :cond_1a

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v2, :cond_1a

    .line 667
    :cond_19
    :goto_19
    return v1

    .line 657
    :cond_1a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->EnclosingMethod:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v2

    .line 658
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->enclClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    .line 660
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v0, v4, :cond_4d

    .line 662
    :cond_34
    const/4 v0, 0x0

    .line 663
    :goto_35
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 665
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    if-nez v0, :cond_52

    move v0, v1

    :goto_45
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 666
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 667
    const/4 v1, 0x1

    goto :goto_19

    .line 663
    :cond_4d
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    goto :goto_35

    .line 665
    :cond_52
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->nameType(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    goto :goto_45
.end method

.method writeField(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 7

    .line 987
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v0

    .line 988
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 989
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpFieldModifiers:Z

    if-eqz v0, :cond_4d

    .line 990
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIELD  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->fieldName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    :cond_4d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->fieldName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 994
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 995
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v1

    .line 996
    const/4 v0, 0x0

    .line 997
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_97

    .line 998
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->ConstantValue:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v0

    .line 999
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getConstValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1000
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1001
    const/4 v0, 0x1

    .line 1003
    :cond_97
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)I

    move-result v2

    .line 1004
    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    .line 1005
    return-void
.end method

.method writeFields(Lcom/sun/tools/javac/code/Scope$Entry;)V
    .registers 5

    .line 1524
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1525
    :goto_4
    if-eqz p1, :cond_19

    .line 1526
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2a

    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1525
    :goto_15
    iget-object p1, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_4

    .line 1528
    :cond_19
    :goto_19
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1529
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeField(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 1530
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_19

    .line 1532
    :cond_29
    return-void

    :cond_2a
    move-object v0, v1

    goto :goto_15
.end method

.method writeFlagAttrs(J)I
    .registers 10

    const-wide/16 v4, 0x0

    .line 674
    const/4 v0, 0x0

    .line 675
    const-wide/32 v2, 0x20000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    .line 676
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->Deprecated:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v0

    .line 677
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 678
    const/4 v0, 0x1

    .line 680
    :cond_17
    const-wide/16 v2, 0x4000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useEnumFlag()Z

    move-result v1

    if-nez v1, :cond_33

    .line 681
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Enum:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 682
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 683
    add-int/lit8 v0, v0, 0x1

    .line 685
    :cond_33
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useSyntheticFlag()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 686
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Synthetic:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 687
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 688
    add-int/lit8 v0, v0, 0x1

    .line 690
    :cond_4f
    const-wide v2, 0x80000000L

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useBridgeFlag()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 691
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Bridge:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 692
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 693
    add-int/lit8 v0, v0, 0x1

    .line 695
    :cond_6e
    const-wide v2, 0x400000000L

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useVarargsFlag()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 696
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Varargs:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 697
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 698
    add-int/lit8 v0, v0, 0x1

    .line 700
    :cond_8d
    const-wide/16 v2, 0x2000

    and-long/2addr v2, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Target;->useAnnotationFlag()Z

    move-result v1

    if-nez v1, :cond_a9

    .line 701
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Annotation:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 702
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 703
    add-int/lit8 v0, v0, 0x1

    .line 705
    :cond_a9
    return v0
.end method

.method writeInnerClasses()V
    .registers 11

    const/4 v4, 0x0

    .line 960
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->InnerClasses:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v5

    .line 961
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 962
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->innerClassesQueue:Lcom/sun/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    move-object v1, v0

    .line 963
    :goto_1b
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 965
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 966
    iget-wide v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v2

    int-to-char v2, v2

    .line 967
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_33

    or-int/lit16 v2, v2, 0x400

    int-to-char v2, v2

    .line 968
    :cond_33
    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    and-int/lit8 v2, v2, -0x11

    int-to-char v2, v2

    .line 969
    :cond_3e
    iget-boolean v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpInnerClassModifiers:Z

    if-eqz v3, :cond_79

    .line 970
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INNERCLASS  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v8, v2

    invoke-static {v8, v9}, Lcom/sun/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    :cond_79
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 974
    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    .line 975
    iget-object v3, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v3, v3, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_b7

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v7, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v3, v7}, Lcom/sun/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v3

    .line 974
    :goto_95
    invoke-virtual {v6, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 976
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    .line 977
    iget-object v6, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v6}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_bd

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/jvm/Pool;->get(Ljava/lang/Object;)I

    move-result v0

    .line 976
    :goto_aa
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 978
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 964
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto/16 :goto_1b

    :cond_b7
    move v3, v4

    .line 975
    goto :goto_95

    .line 980
    :cond_b9
    invoke-virtual {p0, v5}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 981
    return-void

    :cond_bd
    move v0, v4

    goto :goto_aa
.end method

.method writeJavaAnnotations(Lcom/sun/tools/javac/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Attribute$Compound;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    .line 798
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 833
    :cond_7
    :goto_7
    return v1

    .line 799
    :cond_8
    new-instance v2, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 800
    new-instance v3, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 801
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 802
    sget-object v5, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$RetentionPolicy:[I

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/code/Types;->getRetention(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/RetentionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/tools/javac/code/RetentionPolicy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3a

    const/4 v6, 0x3

    if-ne v5, v6, :cond_16

    .line 809
    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_16

    .line 806
    :cond_3a
    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_16

    .line 817
    :cond_3e
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_6e

    .line 818
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->RuntimeVisibleAnnotations:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 819
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 820
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 821
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lcom/sun/tools/javac/code/Attribute$Compound;)V

    goto :goto_59

    .line 822
    :cond_69
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 823
    const/4 v0, 0x1

    move v1, v0

    .line 825
    :cond_6e
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 826
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->RuntimeInvisibleAnnotations:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v2

    .line 827
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 828
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 829
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lcom/sun/tools/javac/code/Attribute$Compound;)V

    goto :goto_89

    .line 830
    :cond_99
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7
.end method

.method writeMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)I
    .registers 10

    .line 713
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeFlagAttrs(J)I

    move-result v0

    .line 714
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    .line 715
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->source:Lcom/sun/tools/javac/code/Source;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->allowGenerics()Z

    move-result v1

    if-eqz v1, :cond_64

    const-wide v4, 0x80001000L  # 1.060999919E-314

    and-long/2addr v4, v2

    const-wide/16 v6, 0x1000

    cmp-long v1, v4, v6

    if-eqz v1, :cond_64

    const-wide/32 v4, 0x20000000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    .line 718
    invoke-virtual {p1, v3}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/code/Types;->isSameType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 719
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->hasTypeVar(Lcom/sun/tools/javac/util/List;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 722
    :cond_46
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Signature:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 723
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v4, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 724
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 725
    add-int/lit8 v0, v0, 0x1

    .line 727
    :cond_64
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeJavaAnnotations(Lcom/sun/tools/javac/util/List;)I

    move-result v1

    .line 728
    add-int/2addr v0, v1

    return v0
.end method

.method writeMethod(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    .registers 9

    .line 1011
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->adjustFlags(J)I

    move-result v0

    .line 1012
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1013
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->dumpMethodModifiers:Z

    if-eqz v0, :cond_4d

    .line 1014
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "METHOD  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->fieldName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->log:Lcom/sun/tools/javac/util/Log;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Log;->errWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/tools/javac/jvm/ClassWriter;->flagNames(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    :cond_4d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->fieldName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1018
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v2}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/ClassWriter;->beginAttrs()I

    move-result v3

    .line 1020
    const/4 v0, 0x0

    .line 1021
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    if-eqz v1, :cond_f7

    .line 1022
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->Code:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v0

    .line 1023
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeCode(Lcom/sun/tools/javac/jvm/Code;)V

    .line 1024
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1025
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1026
    const/4 v0, 0x1

    move v1, v0

    .line 1028
    :goto_8f
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1030
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->Exceptions:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v4

    .line 1031
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move-object v2, v0

    .line 1032
    :goto_b1
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1033
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1032
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v2, v0

    goto :goto_b1

    .line 1034
    :cond_cc
    invoke-virtual {p0, v4}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1035
    add-int/lit8 v1, v1, 0x1

    .line 1037
    :cond_d1
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;

    if-eqz v0, :cond_e9

    .line 1038
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->AnnotationDefault:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v0

    .line 1039
    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->defaultValue:Lcom/sun/tools/javac/code/Attribute;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->awriter:Lcom/sun/tools/javac/jvm/ClassWriter$AttributeWriter;

    invoke-virtual {v2, v4}, Lcom/sun/tools/javac/code/Attribute;->accept(Lcom/sun/tools/javac/code/Attribute$Visitor;)V

    .line 1040
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 1041
    add-int/lit8 v1, v1, 0x1

    .line 1043
    :cond_e9
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeMemberAttrs(Lcom/sun/tools/javac/code/Symbol;)I

    move-result v0

    .line 1044
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeParameterAttrs(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)I

    move-result v2

    .line 1045
    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttrs(II)V

    .line 1046
    return-void

    :cond_f7
    move v1, v0

    goto :goto_8f
.end method

.method writeMethods(Lcom/sun/tools/javac/code/Scope$Entry;)V
    .registers 8

    .line 1535
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1536
    :goto_4
    if-eqz p1, :cond_2c

    .line 1537
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v0, v0, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3d

    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x2000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3d

    .line 1538
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1536
    :goto_28
    iget-object p1, p1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    move-object v1, v0

    goto :goto_4

    .line 1540
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1541
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeMethod(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V

    .line 1542
    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_2c

    .line 1544
    :cond_3c
    return-void

    :cond_3d
    move-object v0, v1

    goto :goto_28
.end method

.method writeParameterAttrs(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)I
    .registers 11

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 736
    .line 738
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 739
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_22
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 740
    sget-object v7, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$code$RetentionPolicy:[I

    iget-object v8, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v8, v0}, Lcom/sun/tools/javac/code/Types;->getRetention(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/RetentionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/RetentionPolicy;->ordinal()I

    move-result v0

    aget v0, v7, v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_44

    const/4 v7, 0x3

    if-ne v0, v7, :cond_22

    move v1, v4

    .line 748
    goto :goto_22

    :cond_44
    move v3, v4

    .line 744
    goto :goto_22

    :cond_46
    move v1, v2

    move v3, v2

    .line 756
    :cond_48
    if-eqz v1, :cond_12a

    .line 757
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->RuntimeVisibleParameterAnnotations:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v1

    .line 758
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 759
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 760
    new-instance v5, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v5}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 761
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7c
    :goto_7c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 762
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/code/Types;->getRetention(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/RetentionPolicy;

    move-result-object v7

    sget-object v8, Lcom/sun/tools/javac/code/RetentionPolicy;->RUNTIME:Lcom/sun/tools/javac/code/RetentionPolicy;

    if-ne v7, v8, :cond_7c

    .line 763
    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_7c

    .line 764
    :cond_96
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 765
    invoke-virtual {v5}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 766
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lcom/sun/tools/javac/code/Attribute$Compound;)V

    goto :goto_a3

    .line 768
    :cond_b3
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    move v1, v4

    .line 771
    :goto_b7
    if-eqz v3, :cond_128

    .line 772
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Names;->RuntimeInvisibleParameterAnnotations:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeAttr(Lcom/sun/tools/javac/util/Name;)I

    move-result v2

    .line 773
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 774
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 775
    new-instance v4, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 776
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->getAnnotationMirrors()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_eb
    :goto_eb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 777
    iget-object v6, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v0}, Lcom/sun/tools/javac/code/Types;->getRetention(Lcom/sun/tools/javac/code/Attribute$Compound;)Lcom/sun/tools/javac/code/RetentionPolicy;

    move-result-object v6

    sget-object v7, Lcom/sun/tools/javac/code/RetentionPolicy;->CLASS:Lcom/sun/tools/javac/code/RetentionPolicy;

    if-ne v6, v7, :cond_eb

    .line 778
    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_eb

    .line 779
    :cond_105
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->length()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 780
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_112
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Attribute$Compound;

    .line 781
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeCompoundAttribute(Lcom/sun/tools/javac/code/Attribute$Compound;)V

    goto :goto_112

    .line 783
    :cond_122
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->endAttr(I)V

    .line 784
    add-int/lit8 v0, v1, 0x1

    .line 786
    :goto_127
    return v0

    :cond_128
    move v0, v1

    goto :goto_127

    :cond_12a
    move v1, v2

    goto :goto_b7
.end method

.method writePool(Lcom/sun/tools/javac/jvm/Pool;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;,
            Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;
        }
    .end annotation

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/4 v13, 0x7

    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 508
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v6, v0, Lcom/sun/tools/javac/util/ByteBuffer;->length:I

    .line 509
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v12}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v2, v3

    .line 511
    :goto_11
    iget v0, p1, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    if-ge v2, v0, :cond_1e2

    .line 512
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, v2

    .line 513
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    instance-of v1, v0, Lcom/sun/tools/javac/jvm/Pool$Method;

    if-eqz v1, :cond_5b

    .line 515
    check-cast v0, Lcom/sun/tools/javac/jvm/Pool$Method;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool$Method;->m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 519
    :cond_24
    :goto_24
    instance-of v1, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v1, :cond_66

    .line 520
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 521
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v8

    const-wide/16 v10, 0x200

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_64

    move v1, v4

    :goto_3c
    invoke-virtual {v7, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 524
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v7, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p1, v7}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 525
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->nameType(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 578
    :cond_57
    :goto_57
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 579
    goto :goto_11

    .line 516
    :cond_5b
    instance-of v1, v0, Lcom/sun/tools/javac/jvm/Pool$Variable;

    if-eqz v1, :cond_24

    .line 517
    check-cast v0, Lcom/sun/tools/javac/jvm/Pool$Variable;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool$Variable;->v:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    goto :goto_24

    :cond_64
    move v1, v5

    .line 523
    goto :goto_3c

    .line 526
    :cond_66
    instance-of v1, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    if-eqz v1, :cond_8c

    .line 527
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 528
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 529
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v7, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p1, v7}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 530
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->nameType(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto :goto_57

    .line 531
    :cond_8c
    instance-of v1, v0, Lcom/sun/tools/javac/util/Name;

    if-eqz v1, :cond_b8

    .line 532
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    move-object v1, v0

    .line 533
    check-cast v1, Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->toUtf()[B

    move-result-object v1

    .line 534
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    array-length v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 535
    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    array-length v8, v1

    invoke-virtual {v7, v1, v12, v8}, Lcom/sun/tools/javac/util/ByteBuffer;->appendBytes([BII)V

    .line 536
    array-length v1, v1

    const v7, 0xffff

    if-le v1, v7, :cond_57

    .line 537
    new-instance v1, Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/jvm/ClassWriter$StringOverflow;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_b8
    instance-of v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v1, :cond_100

    .line 539
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 540
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_ca

    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p1, v1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    .line 541
    :cond_ca
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v13}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 542
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v4, :cond_e6

    .line 543
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_57

    .line 545
    :cond_e6
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v8, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-static {v8}, Lcom/sun/tools/javac/jvm/ClassWriter;->externalize(Lcom/sun/tools/javac/util/Name;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/tools/javac/util/Names;->fromUtf([B)Lcom/sun/tools/javac/util/Name;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 546
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    goto/16 :goto_57

    .line 548
    :cond_100
    instance-of v1, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    if-eqz v1, :cond_129

    .line 549
    check-cast v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;

    .line 550
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 551
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v7, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p1, v7}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 552
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/ClassFile$NameAndType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_57

    .line 553
    :cond_129
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_140

    .line 554
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 555
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendInt(I)V

    goto/16 :goto_57

    .line 556
    :cond_140
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_159

    .line 557
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 558
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/sun/tools/javac/util/ByteBuffer;->appendLong(J)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_57

    .line 560
    :cond_159
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_170

    .line 561
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 562
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendFloat(F)V

    goto/16 :goto_57

    .line 563
    :cond_170
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_189

    .line 564
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 565
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/sun/tools/javac/util/ByteBuffer;->appendDouble(D)V

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_57

    .line 567
    :cond_189
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1a7

    .line 568
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 569
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v7, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_57

    .line 570
    :cond_1a7
    instance-of v1, v0, Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_1cc

    .line 571
    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 572
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v1, v5, :cond_1b8

    iget-object v1, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->enterInner(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 573
    :cond_1b8
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v1, v13}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 574
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->xClassName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_57

    .line 576
    :cond_1cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writePool "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 580
    :cond_1e2
    iget v0, p1, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    const v1, 0xffff

    if-gt v0, v1, :cond_1f1

    .line 582
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->poolbuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p1, Lcom/sun/tools/javac/jvm/Pool;->pp:I

    invoke-virtual {p0, v0, v6, v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->putChar(Lcom/sun/tools/javac/util/ByteBuffer;II)V

    .line 583
    return-void

    .line 581
    :cond_1f1
    new-instance v0, Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;

    invoke-direct {v0}, Lcom/sun/tools/javac/jvm/ClassWriter$PoolOverflow;-><init>()V

    throw v0
.end method

.method writeStackMap(Lcom/sun/tools/javac/jvm/Code;)V
    .registers 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1160
    iget v6, p1, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    .line 1161
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_1e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nframes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1162
    :cond_1e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v6}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    .line 1164
    sget-object v0, Lcom/sun/tools/javac/jvm/ClassWriter$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    iget-object v2, p1, Lcom/sun/tools/javac/jvm/Code;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v4, :cond_73

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6b

    .line 1207
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    .line 1208
    :goto_37
    if-ge v1, v6, :cond_1c2

    .line 1209
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_58

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1210
    :cond_58
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    aget-object v0, v0, v1

    .line 1211
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->write(Lcom/sun/tools/javac/jvm/ClassWriter;)V

    .line 1212
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_68

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1208
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1217
    :cond_6b
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unexpected stackmap format value"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_73
    move v5, v1

    .line 1166
    :goto_74
    if-ge v5, v6, :cond_1c2

    .line 1167
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_95

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1168
    :cond_95
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    aget-object v7, v0, v5

    .line 1171
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_b5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1172
    :cond_b5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v0, v1

    move v2, v1

    .line 1176
    :goto_be
    iget-object v3, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    array-length v3, v3

    if-ge v2, v3, :cond_d9

    .line 1178
    add-int/lit8 v0, v0, 0x1

    .line 1177
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->generateEmptyAfterBig()Z

    move-result v3

    if-eqz v3, :cond_d0

    move v3, v4

    :goto_ce
    add-int/2addr v2, v3

    goto :goto_be

    :cond_d0
    iget-object v3, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v3

    goto :goto_ce

    .line 1180
    :cond_d9
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v2, :cond_f3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " nlocals="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1182
    :cond_f3
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v0, v1

    .line 1183
    :goto_f9
    iget-object v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_138

    .line 1185
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v2, :cond_11d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " local["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1186
    :cond_11d
    iget-object v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMapType(Lcom/sun/tools/javac/code/Type;)V

    .line 1184
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->generateEmptyAfterBig()Z

    move-result v2

    if-eqz v2, :cond_12f

    move v2, v4

    :goto_12d
    add-int/2addr v0, v2

    goto :goto_f9

    :cond_12f
    iget-object v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    goto :goto_12d

    :cond_138
    move v0, v1

    move v2, v1

    .line 1191
    :goto_13a
    iget-object v3, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    array-length v3, v3

    if-ge v2, v3, :cond_155

    .line 1193
    add-int/lit8 v0, v0, 0x1

    .line 1192
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Target;->generateEmptyAfterBig()Z

    move-result v3

    if-eqz v3, :cond_14c

    move v3, v4

    :goto_14a
    add-int/2addr v2, v3

    goto :goto_13a

    :cond_14c
    iget-object v3, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v3

    goto :goto_14a

    .line 1195
    :cond_155
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v2, :cond_16f

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " nstack="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1197
    :cond_16f
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    move v0, v1

    .line 1198
    :goto_175
    iget-object v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    array-length v2, v2

    if-ge v0, v2, :cond_1b4

    .line 1200
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v2, :cond_199

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " stack["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1201
    :cond_199
    iget-object v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/jvm/ClassWriter;->writeStackMapType(Lcom/sun/tools/javac/code/Type;)V

    .line 1199
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Target;->generateEmptyAfterBig()Z

    move-result v2

    if-eqz v2, :cond_1ab

    move v2, v4

    :goto_1a9
    add-int/2addr v0, v2

    goto :goto_175

    :cond_1ab
    iget-object v2, v7, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v2

    goto :goto_1a9

    .line 1203
    :cond_1b4
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_1bd

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1166
    :cond_1bd
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_74

    .line 1205
    :cond_1c2
    return-void
.end method

.method writeStackMapType(Lcom/sun/tools/javac/code/Type;)V
    .registers 6

    const/4 v3, 0x7

    .line 1223
    if-nez p1, :cond_15

    .line 1224
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_e

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1225
    :cond_e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 1256
    :goto_14
    return-void

    .line 1226
    :cond_15
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_115

    const/16 v1, 0xb

    if-eq v0, v1, :cond_115

    const/16 v1, 0xe

    if-eq v0, v1, :cond_d4

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_ae

    const/16 v1, 0x17

    if-eq v0, v1, :cond_80

    packed-switch v0, :pswitch_data_146

    .line 1274
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1240
    :pswitch_38  #0x7
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_43

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1241
    :cond_43
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_14

    .line 1236
    :pswitch_4a  #0x6
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_55

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1237
    :cond_55
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_14

    .line 1244
    :pswitch_5c  #0x5
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_67

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1245
    :cond_67
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_14

    .line 1232
    :pswitch_6e  #0x1, 0x2, 0x3, 0x4, 0x8
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_79

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1233
    :cond_79
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto :goto_14

    .line 1267
    :cond_80
    check-cast p1, Lcom/sun/tools/javac/jvm/UninitializedType;

    .line 1268
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 1269
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_a5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninit_object@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sun/tools/javac/jvm/UninitializedType;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1270
    :cond_a5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget v1, p1, Lcom/sun/tools/javac/jvm/UninitializedType;->offset:I

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_14

    .line 1263
    :cond_ae
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_b9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "uninit_this"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1264
    :cond_b9
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_14

    .line 1248
    :cond_c1
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_cc

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1249
    :cond_cc
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    goto/16 :goto_14

    .line 1258
    :cond_d4
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_fb

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1259
    :cond_fb
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 1260
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_14

    .line 1253
    :cond_115
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->debugstackmap:Z

    if-eqz v0, :cond_134

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1254
    :cond_134
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/ByteBuffer;->appendByte(I)V

    .line 1255
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->databuf:Lcom/sun/tools/javac/util/ByteBuffer;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->pool:Lcom/sun/tools/javac/jvm/Pool;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/jvm/Pool;->put(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ByteBuffer;->appendChar(I)V

    goto/16 :goto_14

    .line 1226
    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_6e  #00000001
        :pswitch_6e  #00000002
        :pswitch_6e  #00000003
        :pswitch_6e  #00000004
        :pswitch_5c  #00000005
        :pswitch_4a  #00000006
        :pswitch_38  #00000007
        :pswitch_6e  #00000008
    .end packed-switch
.end method

.method public xClassName(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;
    .registers 4

    .line 470
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_17

    .line 471
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flatName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/jvm/ClassWriter;->externalize(Lcom/sun/tools/javac/util/Name;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Names;->fromUtf([B)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 473
    :goto_16
    return-object v0

    .line 472
    :cond_17
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_28

    .line 473
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassWriter;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/ClassWriter;->typeSig(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    goto :goto_16

    .line 475
    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "xClassName"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
