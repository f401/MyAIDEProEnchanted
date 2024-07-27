.class public Lcom/sun/tools/javac/jvm/Code;
.super Ljava/lang/Object;
.source "Code.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/jvm/Code$Chain;,
        Lcom/sun/tools/javac/jvm/Code$LocalVar;,
        Lcom/sun/tools/javac/jvm/Code$Mneumonics;,
        Lcom/sun/tools/javac/jvm/Code$StackMapFormat;,
        Lcom/sun/tools/javac/jvm/Code$StackMapFrame;,
        Lcom/sun/tools/javac/jvm/Code$State;
    }
.end annotation


# static fields
.field static jsrReturnValue:Lcom/sun/tools/javac/code/Type;


# instance fields
.field private alive:Z

.field catchInfo:Lcom/sun/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<[C>;"
        }
    .end annotation
.end field

.field public code:[B

.field public cp:I

.field public crt:Lcom/sun/tools/javac/jvm/CRTable;

.field public final debugCode:Z

.field public fatcode:Z

.field private fixedPc:Z

.field frameBeforeLast:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

.field lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

.field lastStackMapPC:I

.field lineDebugInfo:Z

.field lineInfo:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<[C>;"
        }
    .end annotation
.end field

.field lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

.field lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

.field public max_locals:I

.field public max_stack:I

.field final meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field public final needStackMap:Z

.field public nextreg:I

.field pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

.field pendingStackMap:Z

.field pendingStatPos:I

.field final pool:Lcom/sun/tools/javac/jvm/Pool;

.field stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

.field stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

.field stackMapBufferSize:I

.field stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

.field state:Lcom/sun/tools/javac/jvm/Code$State;

.field final syms:Lcom/sun/tools/javac/code/Symtab;

.field final types:Lcom/sun/tools/javac/code/Types;

.field varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

.field varBufferSize:I

.field varDebugInfo:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1953
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    sput-object v0, Lcom/sun/tools/javac/jvm/Code;->jsrReturnValue:Lcom/sun/tools/javac/code/Type;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;ZLcom/sun/tools/javac/util/Position$LineMap;ZLcom/sun/tools/javac/jvm/Code$StackMapFormat;ZLcom/sun/tools/javac/jvm/CRTable;Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/jvm/Pool;)V
    .registers 16

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    .line 84
    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    .line 89
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    .line 94
    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    .line 120
    new-instance v0, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->catchInfo:Lcom/sun/tools/javac/util/ListBuffer;

    .line 126
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    .line 143
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 154
    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/Code;->fixedPc:Z

    .line 159
    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 165
    iput-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 173
    iput v4, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    .line 178
    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 1287
    iput-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1292
    iput-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    .line 1293
    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    .line 1298
    iput v4, p0, Lcom/sun/tools/javac/jvm/Code;->lastStackMapPC:I

    .line 1303
    iput-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1308
    iput-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->frameBeforeLast:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 221
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 222
    iput-boolean p2, p0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    .line 223
    iput-object p3, p0, Lcom/sun/tools/javac/jvm/Code;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    .line 224
    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineDebugInfo:Z

    .line 225
    iput-boolean p4, p0, Lcom/sun/tools/javac/jvm/Code;->varDebugInfo:Z

    .line 226
    iput-object p7, p0, Lcom/sun/tools/javac/jvm/Code;->crt:Lcom/sun/tools/javac/jvm/CRTable;

    .line 227
    iput-object p8, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    .line 228
    iput-object p9, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    .line 229
    iput-boolean p6, p0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    .line 230
    iput-object p5, p0, Lcom/sun/tools/javac/jvm/Code;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    .line 231
    sget-object v0, Lcom/sun/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    invoke-virtual {p5}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    .line 237
    iput-boolean v2, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    .line 235
    :goto_1
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$State;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/jvm/Code$State;-><init>(Lcom/sun/tools/javac/jvm/Code;)V

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 240
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sun/tools/javac/jvm/Code$LocalVar;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    .line 241
    iput-object p10, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    .line 242
    return-void

    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    .line 234
    :cond_1
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/jvm/Code;)Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    return v0
.end method

.method private addLocalVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V
    .registers 7

    const/4 v4, 0x0

    .line 1994
    iget v1, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 1995
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 1996
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    .line 1997
    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v1, 0xa

    .line 1998
    :cond_0
    new-array v0, v0, [Lcom/sun/tools/javac/jvm/Code$LocalVar;

    .line 1999
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2000
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    .line 2002
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    .line 2003
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->resolvePending()V

    .line 2004
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    new-instance v2, Lcom/sun/tools/javac/jvm/Code$LocalVar;

    invoke-direct {v2, p1}, Lcom/sun/tools/javac/jvm/Code$LocalVar;-><init>(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    aput-object v2, v0, v1

    .line 2005
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 2006
    return-void
.end method

.method public static arraycode(Lcom/sun/tools/javac/code/Type;)I
    .registers 3

    .line 333
    iget v0, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arraycode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 353
    :pswitch_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 351
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 349
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 347
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 345
    :pswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 343
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 339
    :pswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 341
    :pswitch_9
    const/4 v0, 0x5

    goto :goto_0

    .line 335
    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private emit1(I)V
    .registers 6

    const/4 v3, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 379
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 380
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    .line 381
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private emit2(I)V
    .registers 6

    .line 391
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    add-int/lit8 v2, v0, 0x2

    array-length v3, v1

    if-le v2, v3, :cond_1

    .line 393
    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 394
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_0

    .line 396
    :cond_1
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 397
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    goto :goto_0
.end method

.method private emitop(I)V
    .registers 5

    .line 423
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->resolvePending()V

    .line 424
    :cond_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_4

    .line 425
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markStatBegin()V

    .line 427
    :cond_1
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    if-eqz v0, :cond_2

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 429
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->emitStackMap()V

    .line 431
    :cond_2
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_3

    .line 432
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emit@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    :cond_3
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 437
    :cond_4
    return-void
.end method

.method private endScope(I)V
    .registers 6

    const v3, 0xffff

    .line 2067
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v0, p1

    .line 2068
    if-eqz v1, :cond_0

    .line 2069
    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 2070
    iget-char v0, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    if-eq v0, v3, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    iget-char v2, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    sub-int/2addr v0, v2

    int-to-char v0, v0

    .line 2072
    if-ge v0, v3, :cond_0

    .line 2073
    iput-char v0, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    .line 2074
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->putVar(Lcom/sun/tools/javac/jvm/Code$LocalVar;)V

    .line 2078
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 2079
    return-void
.end method

.method private get1(I)I
    .registers 3

    .line 1195
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private get2(I)I
    .registers 4

    .line 1202
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private getLocalsSize()I
    .registers 5

    .line 1333
    const/4 v0, 0x0

    .line 1334
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1335
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 1336
    aget-object v0, v2, v1

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1340
    :cond_0
    return v0

    .line 1334
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;
    .registers 6

    .line 1642
    if-nez p1, :cond_0

    .line 1652
    :goto_0
    return-object p0

    .line 1643
    :cond_0
    if-nez p0, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 1644
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1647
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    iget v1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    if-ge v0, v1, :cond_3

    .line 1648
    iget v1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    iget-object v2, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->next:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1650
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-static {p0, v2}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    iget-object v3, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/jvm/Code$Chain;-><init>(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$State;)V

    move-object p0, v0

    .line 1648
    goto :goto_0

    .line 1644
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1652
    :cond_3
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->next:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1654
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-static {v2, p1}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/jvm/Code$Chain;-><init>(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$State;)V

    move-object p0, v0

    .line 1652
    goto :goto_0
.end method

.method public static mnem(I)Ljava/lang/String;
    .registers 2

    .line 2146
    invoke-static {}, Lcom/sun/tools/javac/jvm/Code$Mneumonics;->access$200()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static negate(I)I
    .registers 3

    const/16 v0, 0xc7

    const/16 v1, 0xc6

    .line 1509
    if-ne p0, v1, :cond_0

    .line 1511
    :goto_0
    return v0

    .line 1510
    :cond_0
    if-ne p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1511
    :cond_1
    add-int/lit8 v0, p0, 0x1

    xor-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private newLocal(I)I
    .registers 5

    .line 2108
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 2109
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->width(I)I

    move-result v1

    .line 2110
    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 2111
    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    if-le v1, v2, :cond_0

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    .line 2112
    :cond_0
    return v0
.end method

.method private newLocal(Lcom/sun/tools/javac/code/Type;)I
    .registers 3

    .line 2116
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->newLocal(I)I

    move-result v0

    return v0
.end method

.method private put1(II)V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 1169
    return-void
.end method

.method private put2(II)V
    .registers 4

    .line 1176
    shr-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Code;->put1(II)V

    .line 1177
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/jvm/Code;->put1(II)V

    .line 1178
    return-void
.end method

.method public static truncate(I)I
    .registers 2

    .line 290
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 296
    :goto_0
    return p0

    .line 294
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private typeForPool(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 977
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 983
    :goto_0
    return-object v0

    .line 978
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 979
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 980
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 981
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 982
    :cond_4
    instance-of v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 983
    :cond_5
    instance-of v0, p1, Lcom/sun/tools/javac/code/Type$ArrayType;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    goto :goto_0

    .line 984
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static typecode(Lcom/sun/tools/javac/code/Type;)I
    .registers 4

    const/4 v0, 0x5

    .line 254
    iget v1, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "typecode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sun/tools/javac/code/Type;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/AssertionError;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 272
    :pswitch_0
    const/16 v0, 0x8

    .line 280
    :goto_0
    :pswitch_1
    return v0

    .line 268
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 266
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 264
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 260
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 280
    :cond_0
    :pswitch_8
    const/4 v0, 0x4

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static width(I)I
    .registers 3

    const/4 v0, 0x1

    .line 304
    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    .line 311
    :goto_0
    return v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static width(Lcom/sun/tools/javac/code/Type;)I
    .registers 2

    .line 316
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sun/tools/javac/jvm/Code;->typecode(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(I)I

    move-result v0

    goto :goto_0
.end method

.method public static width(Lcom/sun/tools/javac/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)I"
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    move v1, v0

    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    add-int/2addr v0, v1

    .line 324
    iget-object p0, p0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v1, v0

    goto :goto_0

    .line 326
    :cond_0
    return v1
.end method


# virtual methods
.method public addCatch(CCCC)V
    .registers 8

    .line 1668
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->catchInfo:Lcom/sun/tools/javac/util/ListBuffer;

    const/4 v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    const/4 v2, 0x1

    aput-char p2, v1, v2

    const/4 v2, 0x2

    aput-char p3, v1, v2

    const/4 v2, 0x3

    aput-char p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 1669
    return-void
.end method

.method public addLineNumber(CC)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1680
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineDebugInfo:Z

    if-eqz v0, :cond_2

    .line 1681
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [C

    aget-char v0, v0, v2

    if-ne v0, p1, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, [C

    aget-char v0, v0, v3

    if-eq v0, p2, :cond_2

    .line 1684
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [C

    aput-char p1, v1, v2

    aput-char p2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineInfo:Lcom/sun/tools/javac/util/List;

    .line 1686
    :cond_2
    return-void
.end method

.method public align(I)V
    .registers 3

    .line 1160
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_0

    .line 1161
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    .line 1162
    :cond_0
    return-void
.end method

.method public branch(I)Lcom/sun/tools/javac/jvm/Code$Chain;
    .registers 7

    const/4 v0, 0x0

    const/16 v4, 0xa7

    .line 1540
    .line 1541
    if-ne p1, v4, :cond_2

    .line 1542
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1543
    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1545
    :goto_0
    const/16 v0, 0xa8

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1546
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitJump(I)I

    move-result v2

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 1548
    new-instance v0, Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Code$State;->dup()Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/sun/tools/javac/jvm/Code$Chain;-><init>(ILcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$State;)V

    .line 1549
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->fixedPc:Z

    .line 1550
    if-ne p1, v4, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1552
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public checkLimits(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/util/Log;)Z
    .registers 7

    const v3, 0xffff

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-le v2, v3, :cond_0

    .line 102
    const-string v2, "limit.code"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2, v1}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    return v0

    .line 105
    :cond_0
    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    if-le v2, v3, :cond_1

    .line 106
    const-string v2, "limit.locals"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2, v1}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    if-le v2, v3, :cond_2

    .line 110
    const-string v2, "limit.stack"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2, v1}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public curPc()I
    .registers 3

    .line 368
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->resolvePending()V

    .line 369
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markStatBegin()V

    .line 370
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->fixedPc:Z

    .line 371
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    return v0
.end method

.method public emit4(I)V
    .registers 6

    .line 405
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 406
    :cond_0
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->code:[B

    add-int/lit8 v2, v0, 0x4

    array-length v3, v1

    if-le v2, v3, :cond_1

    .line 407
    shr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 408
    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 409
    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 410
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_0

    .line 412
    :cond_1
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 413
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 414
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 415
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    goto :goto_0
.end method

.method public emitAnewarray(ILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 470
    const/16 v0, 0xbd

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 471
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 473
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 474
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method emitCLDCStackMap(II)V
    .registers 8

    const/4 v1, 0x0

    .line 1347
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->lastStackMapPC:I

    if-ne v0, p1, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 1351
    :cond_0
    iput p1, p0, Lcom/sun/tools/javac/jvm/Code;->lastStackMapPC:I

    .line 1353
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    if-nez v0, :cond_4

    .line 1354
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1362
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    new-instance v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    invoke-direct {v3}, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;-><init>()V

    aput-object v3, v0, v2

    .line 1364
    iput p1, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    .line 1366
    new-array v0, p2, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    move v2, v1

    .line 1367
    :goto_1
    if-ge v2, p2, :cond_5

    .line 1368
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v4, v0, v2

    if-eqz v4, :cond_3

    .line 1369
    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1370
    instance-of v4, v0, Lcom/sun/tools/javac/jvm/UninitializedType;

    if-nez v4, :cond_2

    .line 1371
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1372
    :cond_2
    iget-object v4, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aput-object v0, v4, v2

    .line 1367
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1355
    :cond_4
    array-length v2, v0

    iget v3, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    if-ne v2, v3, :cond_1

    .line 1356
    shl-int/lit8 v2, v3, 0x1

    new-array v2, v2, [Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1358
    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBuffer:[Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    goto :goto_0

    .line 1375
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    move v0, v1

    .line 1376
    :goto_2
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v0, v1, :cond_6

    .line 1377
    iget-object v1, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1376
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1378
    :cond_6
    return-void
.end method

.method public emitInvokedynamic(ILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 536
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v0

    .line 537
    const/16 v1, 0xba

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 538
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    .line 543
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 540
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 541
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 542
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitInvokeinterface(ILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 481
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v0

    .line 482
    const/16 v1, 0xb9

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 483
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 485
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 486
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 487
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 488
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitInvokespecial(ILcom/sun/tools/javac/code/Type;)V
    .registers 6

    .line 495
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v1

    .line 496
    const/16 v0, 0xb7

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 497
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 499
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 500
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 501
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->peek()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/jvm/UninitializedType;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->markInitialized(Lcom/sun/tools/javac/jvm/UninitializedType;)V

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 504
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitInvokestatic(ILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 511
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v0

    .line 512
    const/16 v1, 0xb8

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 513
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 515
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 516
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitInvokevirtual(ILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 523
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/util/List;)I

    move-result v0

    .line 524
    const/16 v1, 0xb6

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 525
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 526
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 527
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 528
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getReturnType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitJump(I)I
    .registers 5

    const/4 v2, 0x0

    .line 1519
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    if-eqz v0, :cond_2

    .line 1520
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_1

    .line 1521
    :cond_0
    add-int/lit16 v0, p1, 0xc8

    add-int/lit16 v0, v0, -0xa7

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop4(II)V

    .line 1528
    :goto_0
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v0, v0, -0x5

    .line 1531
    :goto_1
    return v0

    .line 1523
    :cond_1
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->negate(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 1524
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop4(II)V

    .line 1525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1526
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    goto :goto_0

    .line 1530
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/sun/tools/javac/jvm/Code;->emitop2(II)V

    .line 1531
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v0, v0, -0x3

    goto :goto_1
.end method

.method public emitMultianewarray(IILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 447
    const/16 v0, 0xc5

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 448
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 449
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 450
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 451
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 452
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p3}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitNewarray(ILcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 459
    const/16 v0, 0xbc

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 460
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 462
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 463
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0
.end method

.method public emitStackMap()V
    .registers 4

    .line 1314
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    .line 1315
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    if-nez v1, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    sget-object v1, Lcom/sun/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMap:Lcom/sun/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$StackMapFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1323
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Code;->getLocalsSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitStackMapFrame(II)V

    .line 1321
    :goto_1
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->dump(I)V

    goto :goto_0

    .line 1326
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have chosen a stackmap format"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1320
    :cond_3
    invoke-direct {p0}, Lcom/sun/tools/javac/jvm/Code;->getLocalsSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Code;->emitCLDCStackMap(II)V

    goto :goto_1
.end method

.method emitStackMapFrame(II)V
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1381
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    if-nez v0, :cond_2

    .line 1383
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->getInitialFrame()Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1391
    :cond_0
    :goto_0
    new-instance v6, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    invoke-direct {v6}, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;-><init>()V

    .line 1392
    iput p1, v6, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    .line 1395
    new-array v7, p2, [Lcom/sun/tools/javac/code/Type;

    move v5, v3

    move v1, v3

    .line 1396
    :goto_1
    if-ge v1, p2, :cond_3

    .line 1397
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v4, v0, v1

    if-eqz v4, :cond_d

    .line 1398
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1399
    instance-of v4, v0, Lcom/sun/tools/javac/jvm/UninitializedType;

    if-nez v4, :cond_1

    .line 1400
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1401
    :cond_1
    aput-object v0, v7, v1

    .line 1402
    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    if-le v0, v2, :cond_d

    add-int/lit8 v0, v1, 0x1

    .line 1396
    :goto_2
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1384
    :cond_2
    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    if-ne v0, p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    aput-object v4, v0, v1

    .line 1387
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->frameBeforeLast:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1388
    iput-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->frameBeforeLast:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    goto :goto_0

    .line 1405
    :cond_3
    new-array v0, v5, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, v6, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    move v4, v3

    move v1, v3

    .line 1406
    :goto_3
    if-ge v1, p2, :cond_4

    .line 1407
    if-ge v4, v5, :cond_c

    move v0, v2

    :goto_4
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1408
    iget-object v0, v6, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    aget-object v8, v7, v1

    aput-object v8, v0, v4

    .line 1409
    aget-object v0, v7, v1

    invoke-static {v0}, Lcom/sun/tools/javac/jvm/Code;->width(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    if-le v0, v2, :cond_b

    add-int/lit8 v0, v1, 0x1

    .line 1406
    :goto_5
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_4
    move v0, v3

    move v1, v3

    .line 1413
    :goto_6
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v1, v2, :cond_6

    .line 1414
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 1415
    add-int/lit8 v0, v0, 0x1

    .line 1413
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1418
    :cond_6
    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, v6, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    move v0, v3

    move v1, v3

    .line 1420
    :goto_7
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v1, v2, :cond_8

    .line 1421
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 1422
    iget-object v2, v6, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v5, v5, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 1420
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1426
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    if-nez v0, :cond_a

    .line 1427
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    .line 1435
    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    .line 1436
    invoke-static {v6, v2, v3, v4}, Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;->getInstance(Lcom/sun/tools/javac/jvm/Code$StackMapFrame;I[Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1438
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->frameBeforeLast:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1439
    iput-object v6, p0, Lcom/sun/tools/javac/jvm/Code;->lastFrame:Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    .line 1440
    return-void

    .line 1428
    :cond_a
    array-length v1, v0

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapBufferSize:I

    if-ne v1, v2, :cond_9

    .line 1429
    shl-int/lit8 v1, v2, 0x1

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    .line 1431
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1433
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->stackMapTableBuffer:[Lcom/sun/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_5

    :cond_c
    move v0, v3

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_2
.end method

.method public emitop0(I)V
    .registers 8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 549
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 550
    iget-boolean v2, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v2, :cond_0

    .line 951
    :goto_0
    :pswitch_0
    return-void

    .line 551
    :cond_0
    const/16 v2, 0xa7

    if-eq p1, v2, :cond_d

    const/16 v2, 0xbe

    if-eq p1, v2, :cond_c

    const/16 v2, 0xbf

    if-eq p1, v2, :cond_b

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    .line 948
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 944
    :pswitch_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 566
    :goto_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->postop()V

    goto :goto_0

    .line 695
    :pswitch_3
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-nez v2, :cond_1

    :goto_2
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 696
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 695
    goto :goto_2

    .line 687
    :pswitch_4
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-nez v2, :cond_2

    :goto_3
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 688
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 689
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 687
    goto :goto_3

    .line 666
    :pswitch_5
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-nez v2, :cond_3

    move v1, v0

    :cond_3
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 667
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 668
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto :goto_1

    .line 784
    :pswitch_6
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto :goto_1

    .line 937
    :pswitch_7
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto :goto_1

    .line 919
    :pswitch_8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 920
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1

    .line 914
    :pswitch_9
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 915
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1

    .line 731
    :pswitch_a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 732
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1

    .line 779
    :pswitch_b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 780
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1

    .line 775
    :pswitch_c
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 776
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 771
    :pswitch_d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 772
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 767
    :pswitch_e
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 768
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 763
    :pswitch_f
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 764
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 759
    :pswitch_10
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 760
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 755
    :pswitch_11
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 756
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 751
    :pswitch_12
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 752
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 735
    :pswitch_13
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 736
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 747
    :pswitch_14
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 748
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 743
    :pswitch_15
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 744
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 739
    :pswitch_16
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 740
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 934
    :pswitch_17
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 807
    :pswitch_18
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 728
    :pswitch_19
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 713
    :pswitch_1a
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 923
    :pswitch_1b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 924
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 925
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 926
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 852
    :pswitch_1c
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 853
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 855
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v3, v3, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 857
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 858
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 859
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v4, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 860
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v4, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 861
    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v4, v3}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 862
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 863
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 864
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 867
    :cond_4
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$State;->pop2()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 868
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 869
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 870
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 871
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 872
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 875
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop2()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_6

    .line 878
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 879
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 880
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 881
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 882
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 883
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 886
    :cond_6
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop2()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 887
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 888
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 889
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 834
    :pswitch_1d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_7

    .line 835
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 837
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 838
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 839
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 840
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 841
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 842
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 844
    :cond_7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop2()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 845
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 846
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 847
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 848
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 820
    :pswitch_1e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    .line 821
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 823
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 824
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 825
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 826
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 828
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop2()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 830
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 894
    :pswitch_1f
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 895
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_9

    .line 897
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 898
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    .line 899
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 900
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 901
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 902
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 905
    :cond_9
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop2()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 906
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 907
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 908
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 788
    :pswitch_20
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop1()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 790
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 791
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 792
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 692
    :pswitch_21
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, v0, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 796
    :pswitch_22
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 718
    :pswitch_23
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 817
    :pswitch_24
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v5}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 813
    :pswitch_25
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 683
    :pswitch_26
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 661
    :pswitch_27
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_1

    .line 553
    :pswitch_28
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 554
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stack:[Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 555
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 558
    iget v0, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x11

    if-ne v0, v2, :cond_a

    .line 559
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 561
    :goto_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 560
    :cond_a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_4

    .line 642
    :pswitch_29
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 643
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 638
    :pswitch_2a
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 639
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 634
    :pswitch_2b
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 635
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 630
    :pswitch_2c
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 631
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 624
    :pswitch_2d
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, v4

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 621
    :pswitch_2e
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 618
    :pswitch_2f
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 615
    :pswitch_30
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 612
    :pswitch_31
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 604
    :pswitch_32
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 595
    :pswitch_33
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 587
    :pswitch_34
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 574
    :pswitch_35
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 671
    :cond_b
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 672
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_1

    .line 699
    :cond_c
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 700
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 565
    :cond_d
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_1

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_35
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_25
        :pswitch_24
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_25
        :pswitch_25
        :pswitch_27
        :pswitch_26
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1a
        :pswitch_27
        :pswitch_1a
        :pswitch_27
        :pswitch_1a
        :pswitch_27
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa9
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emitop1(II)V
    .registers 5

    .line 957
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 958
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 971
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 960
    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v1, v1, p2

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 963
    :goto_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->postop()V

    goto :goto_0

    .line 968
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_1
.end method

.method public emitop1w(II)V
    .registers 5

    .line 992
    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    .line 993
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 994
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 995
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 1000
    :goto_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_1

    .line 1033
    :goto_1
    return-void

    .line 997
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 998
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_0

    .line 1001
    :cond_1
    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1030
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1019
    :pswitch_0
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 1028
    :goto_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->postop()V

    goto :goto_1

    .line 1024
    :pswitch_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto :goto_2

    .line 1015
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1012
    :pswitch_3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1009
    :pswitch_4
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1006
    :pswitch_5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1003
    :pswitch_6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_2

    .line 1027
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto :goto_2

    .line 1001
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public emitop1w(III)V
    .registers 6

    .line 1040
    const/16 v0, 0xff

    if-gt p2, v0, :cond_0

    const/16 v0, -0x80

    if-lt p3, v0, :cond_0

    const/16 v0, 0x7f

    if-le p3, v0, :cond_2

    .line 1041
    :cond_0
    const/16 v0, 0xc4

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 1042
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 1043
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 1044
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 1050
    :goto_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_3

    .line 1053
    :cond_1
    return-void

    .line 1046
    :cond_2
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 1047
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    .line 1048
    invoke-direct {p0, p3}, Lcom/sun/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_0

    .line 1051
    :cond_3
    const/16 v0, 0x84

    if-eq p1, v0, :cond_1

    .line 1055
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public emitop2(II)V
    .registers 7

    const/4 v3, 0x1

    .line 1063
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 1064
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    .line 1078
    :goto_0
    :pswitch_0
    return-void

    .line 1065
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit2(I)V

    .line 1066
    const/16 v0, 0x11

    if-eq p1, v0, :cond_8

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_7

    const/16 v0, 0x13

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1132
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1103
    :pswitch_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(Lcom/sun/tools/javac/code/Type;)V

    .line 1104
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto :goto_0

    .line 1107
    :pswitch_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 1108
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 1071
    :pswitch_3
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->pop(Lcom/sun/tools/javac/code/Type;)V

    goto :goto_0

    .line 1068
    :pswitch_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1100
    :pswitch_5
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_0

    .line 1097
    :pswitch_6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_0

    .line 1087
    :cond_1
    :pswitch_7
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_0

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 1124
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/jvm/Code$State;->pop(I)V

    .line 1112
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p2

    .line 1113
    instance-of v1, v0, Lcom/sun/tools/javac/code/Symbol;

    if-eqz v1, :cond_4

    .line 1114
    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1116
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1115
    :cond_4
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_1

    .line 1120
    :cond_5
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v1, v1, p2

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1127
    :cond_6
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v1, v1, p2

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1074
    :cond_7
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pool:Lcom/sun/tools/javac/jvm/Pool;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Symbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v2, v2, -0x3

    invoke-static {v0, v2}, Lcom/sun/tools/javac/jvm/UninitializedType;->uninitializedObject(Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/jvm/UninitializedType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1077
    :cond_8
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    goto/16 :goto_0

    .line 1066
    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public emitop4(II)V
    .registers 5

    .line 1141
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->emitop(I)V

    .line 1142
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_1

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/jvm/Code;->emit4(I)V

    .line 1144
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1146
    :cond_2
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->markDead()V

    goto :goto_0
.end method

.method public endScopes(I)V
    .registers 4

    .line 2136
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 2137
    iput p1, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 2138
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->endScope(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2139
    :cond_0
    return-void
.end method

.method public entryPoint()I
    .registers 3

    .line 1235
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v0

    .line 1236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1237
    iget-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 1238
    return v0
.end method

.method public entryPoint(Lcom/sun/tools/javac/jvm/Code$State;)I
    .registers 6

    const/4 v0, 0x1

    .line 1246
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    .line 1247
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1248
    invoke-virtual {p1}, Lcom/sun/tools/javac/jvm/Code$State;->dup()Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 1249
    iget v2, p1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget v3, p0, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    if-gt v2, v3, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1250
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry point "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1251
    :cond_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 1252
    return v1

    .line 1249
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entryPoint(Lcom/sun/tools/javac/jvm/Code$State;Lcom/sun/tools/javac/code/Type;)I
    .registers 7

    const/4 v0, 0x1

    .line 1260
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    .line 1261
    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1262
    invoke-virtual {p1}, Lcom/sun/tools/javac/jvm/Code$State;->dup()Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 1263
    iget v2, p1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget v3, p0, Lcom/sun/tools/javac/jvm/Code;->max_stack:I

    if-gt v2, v3, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1264
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/jvm/Code$State;->push(Lcom/sun/tools/javac/code/Type;)V

    .line 1265
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry point "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1266
    :cond_0
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 1267
    return v1

    .line 1263
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get4(I)I
    .registers 6

    .line 1210
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v0

    .line 1212
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v1

    .line 1213
    add-int/lit8 v2, p1, 0x2

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v2

    .line 1214
    add-int/lit8 v3, p1, 0x3

    invoke-direct {p0, v3}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v3

    .line 1210
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method getInitialFrame()Lcom/sun/tools/javac/jvm/Code$StackMapFrame;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1443
    new-instance v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;

    invoke-direct {v3}, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;-><init>()V

    .line 1444
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->externalType(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$MethodType;

    iget-object v4, v0, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    .line 1445
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->length()I

    move-result v0

    .line 1447
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v5}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStatic()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1448
    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v5, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1449
    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    .line 1450
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->meth:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->syms:Lcom/sun/tools/javac/code/Symtab;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    if-eq v5, v0, :cond_0

    .line 1451
    iget-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    invoke-static {v5}, Lcom/sun/tools/javac/jvm/UninitializedType;->uninitializedThis(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/UninitializedType;

    move-result-object v5

    aput-object v5, v0, v2

    :goto_0
    move v0, v1

    .line 1458
    :goto_1
    invoke-virtual {v4}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 1459
    iget-object v4, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    iget-object v5, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v5, v0}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1453
    :cond_0
    iget-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v6, v5}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    aput-object v5, v0, v2

    goto :goto_0

    .line 1456
    :cond_1
    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->locals:[Lcom/sun/tools/javac/code/Type;

    move v0, v2

    goto :goto_1

    .line 1461
    :cond_2
    const/4 v0, -0x1

    iput v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->pc:I

    .line 1462
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/sun/tools/javac/jvm/Code$StackMapFrame;->stack:[Lcom/sun/tools/javac/code/Type;

    .line 1463
    return-object v3
.end method

.method public isAlive()Z
    .registers 2

    .line 1221
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDead()V
    .registers 2

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1229
    return-void
.end method

.method public markStatBegin()V
    .registers 5

    .line 1701
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineDebugInfo:Z

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lineMap:Lcom/sun/tools/javac/util/Position$LineMap;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    invoke-interface {v0, v1}, Lcom/sun/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result v0

    .line 1703
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    int-to-char v2, v1

    .line 1704
    int-to-char v3, v0

    .line 1705
    if-ne v2, v1, :cond_0

    if-ne v3, v0, :cond_0

    .line 1706
    invoke-virtual {p0, v2, v3}, Lcom/sun/tools/javac/jvm/Code;->addLineNumber(CC)V

    .line 1708
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    .line 1709
    return-void
.end method

.method public newLocal(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)I
    .registers 3

    .line 2120
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->types:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->erasure(Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->newLocal(Lcom/sun/tools/javac/code/Type;)I

    move-result v0

    iput v0, p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 2121
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/jvm/Code;->addLocalVar(Lcom/sun/tools/javac/code/Symbol$VarSymbol;)V

    .line 2122
    return v0
.end method

.method public newRegSegment()V
    .registers 2

    .line 2129
    iget v0, p0, Lcom/sun/tools/javac/jvm/Code;->max_locals:I

    iput v0, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    .line 2130
    return-void
.end method

.method postop()V
    .registers 2

    .line 440
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 441
    return-void

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put4(II)V
    .registers 5

    .line 1185
    shr-int/lit8 v0, p2, 0x18

    invoke-direct {p0, p1, v0}, Lcom/sun/tools/javac/jvm/Code;->put1(II)V

    .line 1186
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Code;->put1(II)V

    .line 1187
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Code;->put1(II)V

    .line 1188
    add-int/lit8 v0, p1, 0x3

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/jvm/Code;->put1(II)V

    .line 1189
    return-void
.end method

.method putVar(Lcom/sun/tools/javac/jvm/Code$LocalVar;)V
    .registers 7

    const/4 v4, 0x0

    .line 2086
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->varDebugInfo:Z

    if-nez v0, :cond_1

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2087
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code$LocalVar;->sym:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    if-nez v0, :cond_3

    .line 2089
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sun/tools/javac/jvm/Code$LocalVar;

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    .line 2095
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 2090
    :cond_3
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->varBufferSize:I

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 2091
    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/sun/tools/javac/jvm/Code$LocalVar;

    .line 2092
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2093
    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->varBuffer:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    goto :goto_1
.end method

.method public resolve(Lcom/sun/tools/javac/jvm/Code$Chain;)V
    .registers 4

    .line 1620
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    iget-object v1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1625
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    invoke-static {p1, v0}, Lcom/sun/tools/javac/jvm/Code;->mergeChains(Lcom/sun/tools/javac/jvm/Code$Chain;Lcom/sun/tools/javac/jvm/Code$Chain;)Lcom/sun/tools/javac/jvm/Code$Chain;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1626
    return-void

    .line 1620
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolve(Lcom/sun/tools/javac/jvm/Code$Chain;I)V
    .registers 11

    const/16 v7, 0xa7

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1559
    .line 1560
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    move v0, v4

    move v5, p2

    .line 1561
    :goto_0
    if-eqz p1, :cond_1

    .line 1562
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v6, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    if-eq v3, v6, :cond_5

    iget v3, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    if-gt v5, v3, :cond_0

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v3, v3, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v3, :cond_5

    :cond_0
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1564
    iget v3, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-lt v5, v3, :cond_6

    .line 1565
    iget v3, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    .line 1570
    :goto_2
    iget v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    invoke-direct {p0, v5}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v5

    if-ne v5, v7, :cond_8

    iget v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    add-int/lit8 v5, v5, 0x3

    if-ne v5, v3, :cond_8

    iget v5, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-ne v3, v5, :cond_8

    iget-boolean v6, p0, Lcom/sun/tools/javac/jvm/Code;->fixedPc:Z

    if-nez v6, :cond_8

    .line 1574
    add-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    .line 1575
    add-int/lit8 v3, v3, -0x3

    .line 1576
    iget-object v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->next:Lcom/sun/tools/javac/jvm/Code$Chain;

    if-nez v5, :cond_a

    .line 1580
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    .line 1608
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    if-eq v0, v2, :cond_3

    :cond_2
    move v4, v1

    :cond_3
    invoke-static {v4}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1609
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    if-eq v0, v2, :cond_4

    .line 1610
    iget-object v0, v2, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->setDefined(Lcom/sun/tools/javac/util/Bits;)V

    .line 1611
    iput-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 1612
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStackMap:Z

    .line 1614
    :cond_4
    return-void

    :cond_5
    move v3, v4

    .line 1562
    goto :goto_1

    .line 1566
    :cond_6
    invoke-direct {p0, v5}, Lcom/sun/tools/javac/jvm/Code;->get1(I)I

    move-result v3

    if-ne v3, v7, :cond_12

    .line 1567
    iget-boolean v3, p0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    if-eqz v3, :cond_7

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/jvm/Code;->get4(I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_2

    .line 1568
    :cond_7
    add-int/lit8 v3, v5, 0x1

    invoke-direct {p0, v3}, Lcom/sun/tools/javac/jvm/Code;->get2(I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_2

    .line 1584
    :cond_8
    iget-boolean v5, p0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    if-eqz v5, :cond_d

    .line 1585
    iget v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v5, v6}, Lcom/sun/tools/javac/jvm/Code;->put4(II)V

    .line 1591
    :goto_3
    iget-boolean v5, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v5, v5, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    iget v6, v2, Lcom/sun/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v5, v6, :cond_11

    iget-object v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget v5, v5, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    iget v6, v2, Lcom/sun/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v5, v6, :cond_11

    :cond_9
    move v5, v1

    :goto_4
    invoke-static {v5}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1595
    :cond_a
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->fixedPc:Z

    .line 1596
    iget v5, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-ne v5, v3, :cond_c

    .line 1598
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_b

    .line 1599
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolving chain state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1600
    :cond_b
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_10

    .line 1601
    iget-object v0, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/jvm/Code$State;->join(Lcom/sun/tools/javac/jvm/Code$State;)Lcom/sun/tools/javac/jvm/Code$State;

    move-result-object v2

    move v0, v1

    .line 1561
    :cond_c
    :goto_5
    iget-object p1, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->next:Lcom/sun/tools/javac/jvm/Code$Chain;

    move v5, v3

    goto/16 :goto_0

    .line 1586
    :cond_d
    iget v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    sub-int v5, v3, v5

    const/16 v6, -0x8000

    if-lt v5, v6, :cond_e

    iget v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    sub-int v5, v3, v5

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_f

    .line 1588
    :cond_e
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->fatcode:Z

    goto :goto_3

    .line 1590
    :cond_f
    iget v5, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->pc:I

    sub-int v6, v3, v6

    invoke-direct {p0, v5, v6}, Lcom/sun/tools/javac/jvm/Code;->put2(II)V

    goto :goto_3

    .line 1603
    :cond_10
    iget-object v2, p1, Lcom/sun/tools/javac/jvm/Code$Chain;->state:Lcom/sun/tools/javac/jvm/Code$State;

    .line 1604
    iput-boolean v1, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    move v0, v1

    goto :goto_5

    :cond_11
    move v5, v4

    goto :goto_4

    :cond_12
    move v3, v5

    goto/16 :goto_2
.end method

.method public resolvePending()V
    .registers 3

    .line 1632
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1633
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->pendingJumps:Lcom/sun/tools/javac/jvm/Code$Chain;

    .line 1634
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/jvm/Code;->resolve(Lcom/sun/tools/javac/jvm/Code$Chain;I)V

    .line 1635
    return-void
.end method

.method public setDefined(I)V
    .registers 5

    const v2, 0xffff

    .line 2031
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, p1

    .line 2032
    if-nez v0, :cond_1

    .line 2033
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2035
    :cond_1
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/Bits;->incl(I)V

    .line 2036
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    if-ge v1, v2, :cond_0

    .line 2037
    iget-char v1, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    if-ne v1, v2, :cond_0

    .line 2038
    iget v1, p0, Lcom/sun/tools/javac/jvm/Code;->cp:I

    int-to-char v1, v1

    iput-char v1, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    goto :goto_0
.end method

.method public setDefined(Lcom/sun/tools/javac/util/Bits;)V
    .registers 5

    .line 2012
    iget-boolean v0, p0, Lcom/sun/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    if-eq p1, v0, :cond_2

    .line 2013
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Bits;->dup()Lcom/sun/tools/javac/util/Bits;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Bits;->xorSet(Lcom/sun/tools/javac/util/Bits;)Lcom/sun/tools/javac/util/Bits;

    move-result-object v1

    .line 2014
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v0

    .line 2015
    :goto_0
    if-ltz v0, :cond_2

    .line 2017
    iget v2, p0, Lcom/sun/tools/javac/jvm/Code;->nextreg:I

    if-lt v0, v2, :cond_0

    .line 2018
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 2016
    :goto_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/Bits;->nextBit(I)I

    move-result v0

    goto :goto_0

    .line 2019
    :cond_0
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v2, v2, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v2, v0}, Lcom/sun/tools/javac/util/Bits;->isMember(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2020
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->setUndefined(I)V

    goto :goto_1

    .line 2022
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->setDefined(I)V

    goto :goto_1

    .line 2025
    :cond_2
    return-void
.end method

.method public setUndefined(I)V
    .registers 6

    const v3, 0xffff

    .line 2047
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->state:Lcom/sun/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lcom/sun/tools/javac/jvm/Code$State;->defined:Lcom/sun/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Bits;->excl(I)V

    .line 2048
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object v0, v0, p1

    iget-char v0, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    if-eq v0, v3, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, p1

    .line 2052
    invoke-virtual {p0}, Lcom/sun/tools/javac/jvm/Code;->curPc()I

    move-result v1

    iget-char v2, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    sub-int/2addr v1, v2

    int-to-char v1, v1

    .line 2053
    if-lez v1, :cond_1

    if-ge v1, v3, :cond_1

    .line 2054
    iget-object v2, p0, Lcom/sun/tools/javac/jvm/Code;->lvar:[Lcom/sun/tools/javac/jvm/Code$LocalVar;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Code$LocalVar;->dup()Lcom/sun/tools/javac/jvm/Code$LocalVar;

    move-result-object v3

    aput-object v3, v2, p1

    .line 2055
    iput-char v1, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->length:C

    .line 2056
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/jvm/Code;->putVar(Lcom/sun/tools/javac/jvm/Code$LocalVar;)V

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 2058
    :cond_1
    iput-char v3, v0, Lcom/sun/tools/javac/jvm/Code$LocalVar;->start_pc:C

    goto :goto_0
.end method

.method public statBegin(I)V
    .registers 3

    .line 1692
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1693
    iput p1, p0, Lcom/sun/tools/javac/jvm/Code;->pendingStatPos:I

    .line 1695
    :cond_0
    return-void
.end method
