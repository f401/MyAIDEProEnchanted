.class public Labcd/iC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/iC$a;
    }
.end annotation


# static fields
.field private static final DW:[B

.field private static final FH:[B

.field private static Hw:[I

.field private static final j6:[B

.field private static v5:[I


# instance fields
.field private EQ:Labcd/eC;

.field private J0:I

.field private J8:Ljava/lang/String;

.field private QX:Labcd/jK;

.field private VH:Labcd/UE;

.field private Ws:Ljava/lang/String;

.field private XL:Labcd/BC;

.field private final Zo:Ljava/io/OutputStream;

.field private aM:Labcd/LE;

.field private gn:Labcd/IE;

.field private j3:Labcd/cC$c;

.field private tp:I

.field private u7:I

.field private we:Labcd/zC;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string v0, "\\ No newline at end of file\n"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Labcd/iC;->j6:[B

    new-array v0, v1, [B

    sput-object v0, Labcd/iC;->DW:[B

    new-array v0, v1, [B

    sput-object v0, Labcd/iC;->FH:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Labcd/iC;->u7:I

    const/4 v0, 0x7

    iput v0, p0, Labcd/iC;->tp:I

    sget-object v0, Labcd/zC;->j6:Labcd/zC;

    iput-object v0, p0, Labcd/iC;->we:Labcd/zC;

    const/high16 v0, 0x3200000

    iput v0, p0, Labcd/iC;->J0:I

    const-string v0, "a/"

    iput-object v0, p0, Labcd/iC;->J8:Ljava/lang/String;

    const-string v0, "b/"

    iput-object v0, p0, Labcd/iC;->Ws:Ljava/lang/String;

    sget-object v0, Labcd/jK;->j6:Labcd/jK;

    iput-object v0, p0, Labcd/iC;->QX:Labcd/jK;

    iput-object p1, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    return-void
.end method

.method private DW(Labcd/hC;)Labcd/iC$a;
    .registers 8

    new-instance v2, Labcd/iC$a;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Labcd/iC$a;-><init>(Labcd/iC$a;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v3, p1}, Labcd/iC;->j6(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V

    invoke-virtual {p1}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0, v3, p1}, Labcd/iC;->DW(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V

    invoke-direct {p0, v3, p1}, Labcd/iC;->DW(Ljava/io/OutputStream;Labcd/hC;)V

    new-instance v0, Labcd/kC;

    invoke-direct {v0}, Labcd/kC;-><init>()V

    sget-object v1, Labcd/HF$a;->j6:Labcd/HF$a;

    :cond_1
    :goto_0
    new-instance v4, Labcd/HF;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v4, v3, v0, v1}, Labcd/HF;-><init>([BLabcd/kC;Labcd/HF$a;)V

    iput-object v4, v2, Labcd/iC$a;->j6:Labcd/HF;

    return-object v2

    :cond_2
    invoke-direct {p0}, Labcd/iC;->FH()V

    sget-object v0, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-direct {p0, v0, p1}, Labcd/iC;->j6(Labcd/hC$b;Labcd/hC;)[B

    move-result-object v0

    sget-object v1, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-direct {p0, v1, p1}, Labcd/iC;->j6(Labcd/hC$b;Labcd/hC;)[B

    move-result-object v1

    sget-object v4, Labcd/iC;->FH:[B

    if-eq v0, v4, :cond_3

    if-eq v1, v4, :cond_3

    invoke-static {v0}, Labcd/tC;->j6([B)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Labcd/tC;->j6([B)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-direct {p0, v3, p1}, Labcd/iC;->DW(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V

    const-string v0, "Binary files differ\n"

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v0, Labcd/kC;

    invoke-direct {v0}, Labcd/kC;-><init>()V

    sget-object v1, Labcd/HF$a;->DW:Labcd/HF$a;

    goto :goto_0

    :cond_4
    new-instance v4, Labcd/tC;

    invoke-direct {v4, v0}, Labcd/tC;-><init>([B)V

    iput-object v4, v2, Labcd/iC$a;->DW:Labcd/tC;

    new-instance v0, Labcd/tC;

    invoke-direct {v0, v1}, Labcd/tC;-><init>([B)V

    iput-object v0, v2, Labcd/iC$a;->FH:Labcd/tC;

    iget-object v0, v2, Labcd/iC$a;->DW:Labcd/tC;

    iget-object v1, v2, Labcd/iC$a;->FH:Labcd/tC;

    invoke-direct {p0, v0, v1}, Labcd/iC;->j6(Labcd/tC;Labcd/tC;)Labcd/kC;

    move-result-object v0

    sget-object v1, Labcd/HF$a;->j6:Labcd/HF$a;

    invoke-static {}, Labcd/iC;->j6()[I

    move-result-object v4

    invoke-virtual {p1}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    invoke-direct {p0, v3, p1}, Labcd/iC;->DW(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, p1}, Labcd/iC;->DW(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V

    goto :goto_0
.end method

.method private static DW(Labcd/TJ;Labcd/TJ;)Labcd/jK;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p0, Labcd/RC;

    if-eqz v0, :cond_1

    instance-of v0, p1, Labcd/_J;

    if-eqz v0, :cond_1

    new-instance v0, Labcd/dK;

    invoke-direct {v0, v2, v3}, Labcd/dK;-><init>(II)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Labcd/_J;

    if-eqz v1, :cond_2

    instance-of v0, p1, Labcd/RC;

    if-eqz v0, :cond_2

    new-instance v0, Labcd/dK;

    invoke-direct {v0, v3, v2}, Labcd/dK;-><init>(II)V

    goto :goto_0

    :cond_2
    sget-object v0, Labcd/jK;->DW:Labcd/jK;

    if-eqz v1, :cond_3

    new-instance v1, Labcd/eK;

    invoke-direct {v1, v2}, Labcd/eK;-><init>(I)V

    invoke-static {v1, v0}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v0

    :cond_3
    instance-of v1, p1, Labcd/_J;

    if-eqz v1, :cond_0

    new-instance v1, Labcd/eK;

    invoke-direct {v1, v3}, Labcd/eK;-><init>(I)V

    invoke-static {v1, v0}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v0

    goto :goto_0
.end method

.method private DW(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    invoke-virtual {v0}, Labcd/BC;->v5()V

    iget-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    invoke-virtual {v0, p1}, Labcd/BC;->j6(Ljava/util/Collection;)V

    iget-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    iget-object v1, p0, Labcd/iC;->gn:Labcd/IE;

    iget-object v2, p0, Labcd/iC;->aM:Labcd/LE;

    invoke-virtual {v0, v1, v2}, Labcd/BC;->j6(Labcd/IE;Labcd/LE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private DW(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V
    .registers 7

    iget-object v0, p2, Labcd/hC;->u7:Labcd/WD;

    iget-object v1, p2, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v0, v1}, Labcd/WD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Labcd/iC;->j6()[I

    move-result-object v0

    invoke-virtual {p2}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "/dev/null"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/iC;->J8:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/iC;->Ws:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/iC;->J8:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "/dev/null"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/iC;->Ws:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private DW(Ljava/io/OutputStream;Labcd/hC;)V
    .registers 5

    invoke-virtual {p2}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-Subproject commit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->Zo()Labcd/WD;

    move-result-object v1

    invoke-virtual {v1}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {p2}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+Subproject commit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->FH()Labcd/WD;

    move-result-object v1

    invoke-virtual {v1}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void
.end method

.method private DW(Ljava/util/List;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/jC;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->Hw()I

    move-result v1

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->Zo()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Labcd/iC;->u7:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic DW()[I
    .registers 3

    sget-object v0, Labcd/iC;->v5:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/hC$b;->values()[Labcd/hC$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Labcd/iC;->v5:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private FH(Ljava/util/List;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/jC;",
            ">;I)I"
        }
    .end annotation

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-direct {p0, p1, p2}, Labcd/iC;->j6(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/iC;->DW(Ljava/util/List;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    add-int/lit8 v0, p2, -0x1

    return v0
.end method

.method private FH()V
    .registers 3

    iget-object v0, p0, Labcd/iC;->VH:Labcd/UE;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->repositoryIsRequired:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static FH(Labcd/hC;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v0

    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v0

    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private FH(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method private FH(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Labcd/iC;->QX:Labcd/jK;

    check-cast v0, Labcd/WF;

    invoke-virtual {v0}, Labcd/WF;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-virtual {v0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v3

    sget-object v4, Labcd/hC$a;->j6:Labcd/hC$a;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Labcd/GK;->j6:Labcd/GK$c;

    invoke-virtual {v0, p0}, Labcd/GK$c;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Hw(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/iC;->QX:Labcd/jK;

    check-cast v0, Labcd/WF;

    invoke-virtual {v0}, Labcd/WF;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-static {v0}, Labcd/iC;->FH(Labcd/hC;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/WF;->j6(Ljava/lang/String;)Labcd/WF;

    move-result-object v1

    iput-object v1, p0, Labcd/iC;->QX:Labcd/jK;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private Hw(Labcd/tC;I)Z
    .registers 5

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Labcd/tC;->j6()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Labcd/tC;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/TJ;)Labcd/cC;
    .registers 3

    instance-of v0, p1, Labcd/_J;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/_J;

    invoke-static {p1}, Labcd/cC;->j6(Labcd/_J;)Labcd/cC;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-static {v0}, Labcd/cC;->j6(Labcd/IE;)Labcd/cC;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Labcd/tC;Labcd/tC;)Labcd/kC;
    .registers 5

    iget-object v0, p0, Labcd/iC;->EQ:Labcd/eC;

    iget-object v1, p0, Labcd/iC;->we:Labcd/zC;

    invoke-virtual {v0, v1, p1, p2}, Labcd/eC;->j6(Labcd/DC;Labcd/CC;Labcd/CC;)Labcd/kC;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/WD;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Labcd/WD;->DW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/iC;->VH:Labcd/UE;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-virtual {p1}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v1

    iget v2, p0, Labcd/iC;->tp:I

    invoke-virtual {v0, v1, v2}, Labcd/IE;->j6(Labcd/YD;I)Labcd/WD;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j6(CII)V
    .registers 9

    const/16 v4, 0x2c

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    int-to-long v2, p2

    invoke-static {v2, v3}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    int-to-long v2, p3

    invoke-static {v2, v3}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    int-to-long v2, p2

    invoke-static {v2, v3}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    add-int/lit8 v1, p2, -0x1

    int-to-long v2, v1

    invoke-static {v2, v3}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method private j6(Ljava/io/ByteArrayOutputStream;Labcd/hC;)V
    .registers 11

    const/16 v7, 0xa

    invoke-virtual {p2}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v3

    invoke-virtual {p2}, Labcd/hC;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Labcd/hC;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v4

    invoke-virtual {p2}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v5

    const-string v0, "diff --git "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/iC;->J8:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Labcd/hC$a;->j6:Labcd/hC$a;

    if-ne v3, v0, :cond_4

    move-object v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/iC;->Ws:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v3, v0, :cond_5

    move-object v0, v2

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Labcd/iC;->j6()[I

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    const/4 v6, 0x1

    if-eq v0, v6, :cond_a

    const/4 v6, 0x2

    if-eq v0, v6, :cond_9

    const/4 v6, 0x3

    if-eq v0, v6, :cond_8

    const/4 v6, 0x4

    if-eq v0, v6, :cond_7

    const/4 v6, 0x5

    if-eq v0, v6, :cond_6

    :cond_0
    :goto_2
    sget-object v0, Labcd/hC$a;->DW:Labcd/hC$a;

    if-eq v3, v0, :cond_1

    sget-object v0, Labcd/hC$a;->Hw:Labcd/hC$a;

    if-ne v3, v0, :cond_2

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "old mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, p1}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v0, "new mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, p1}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    invoke-virtual {p2}, Labcd/hC;->Zo()Labcd/WD;

    move-result-object v0

    invoke-virtual {p2}, Labcd/hC;->FH()Labcd/WD;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/WD;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Labcd/iC;->j6(Ljava/io/OutputStream;Labcd/hC;)V

    :cond_3
    return-void

    :cond_4
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "similarity index "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->u7()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "copy from "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "new file mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, p1}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "similarity index "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->u7()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "rename from "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "rename to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Labcd/iC;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "deleted file mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v4, p1}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p2}, Labcd/hC;->u7()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dissimilarity index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->u7()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "new file mode "

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, p1}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2
.end method

.method private static j6(Labcd/jC;II)Z
    .registers 4

    invoke-virtual {p0}, Labcd/jC;->v5()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Labcd/jC;->Zo()I

    move-result v0

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Ljava/util/List;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/jC;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->FH()I

    move-result v1

    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->v5()I

    move-result v0

    sub-int v0, v1, v0

    iget v1, p0, Labcd/iC;->u7:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/hC$b;Labcd/hC;)[B
    .registers 8

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p2, p1}, Labcd/hC;->DW(Labcd/hC$b;)Labcd/rE;

    move-result-object v0

    sget-object v1, Labcd/rE;->Zo:Labcd/rE;

    if-ne v0, v1, :cond_0

    sget-object v0, Labcd/iC;->DW:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p1}, Labcd/hC;->DW(Labcd/hC$b;)Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v0

    if-eq v0, v4, :cond_1

    sget-object v0, Labcd/iC;->DW:[B

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Labcd/hC;->FH(Labcd/hC$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/iC;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Labcd/iC;->FH:[B

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Labcd/hC;->j6(Labcd/hC$b;)Labcd/WD;

    move-result-object v0

    invoke-virtual {v0}, Labcd/WD;->DW()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-virtual {v1, v0}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v3, :cond_5

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YD;

    invoke-static {v0}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v0

    invoke-static {}, Labcd/iC;->DW()[I

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    move-object v1, v0

    :goto_1
    :try_start_0
    iget-object v0, p0, Labcd/iC;->j3:Labcd/cC$c;

    invoke-virtual {v0, p1, p2}, Labcd/cC$c;->j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;

    move-result-object v0

    iget v2, p0, Labcd/iC;->J0:I

    invoke-virtual {v0, v2}, Labcd/FE;->j6(I)[B
    :try_end_0
    .catch Labcd/cD$b; {:try_start_0 .. :try_end_0} :catch_3
    .catch Labcd/cD$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Labcd/cD$c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Labcd/cD; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    iput-object v0, p2, Labcd/hC;->tp:Labcd/WD;

    move-object v1, v0

    goto :goto_1

    :cond_4
    iput-object v0, p2, Labcd/hC;->u7:Labcd/WD;

    move-object v1, v0

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_6

    new-instance v1, Labcd/fD;

    invoke-direct {v1, v0, v4}, Labcd/fD;-><init>(Labcd/WD;I)V

    throw v1

    :cond_6
    new-instance v2, Labcd/UC;

    invoke-direct {v2, v0, v1}, Labcd/UC;-><init>(Labcd/WD;Ljava/util/Collection;)V

    throw v2

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Labcd/WD;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/cD;->j6(Labcd/YD;)V

    throw v0

    :catch_1
    move-exception v0

    sget-object v0, Labcd/iC;->FH:[B

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Labcd/iC;->FH:[B

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v0, Labcd/iC;->FH:[B

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/iC;->Hw:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/hC$a;->values()[Labcd/hC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/hC$a;->j6:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Labcd/iC;->Hw:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public DW(Labcd/YD;Labcd/YD;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YD;",
            "Labcd/YD;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/iC;->FH()V

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/IE;)V

    invoke-virtual {v0, p1}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v1

    invoke-virtual {v0, p2}, Labcd/qG;->gn(Labcd/YD;)Labcd/mG;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Labcd/iC;->j6(Labcd/mG;Labcd/mG;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected DW(Labcd/tC;I)V
    .registers 4

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1, p2}, Labcd/iC;->j6(CLabcd/tC;I)V

    return-void
.end method

.method public DW(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/iC;->J8:Ljava/lang/String;

    return-void
.end method

.method protected FH(Labcd/tC;I)V
    .registers 4

    const/16 v0, 0x2d

    invoke-virtual {p0, v0, p1, p2}, Labcd/iC;->j6(CLabcd/tC;I)V

    return-void
.end method

.method public j6(Labcd/TJ;Labcd/TJ;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/TJ;",
            "Labcd/TJ;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-direct {p0}, Labcd/iC;->FH()V

    new-instance v1, Labcd/YJ;

    iget-object v0, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-direct {v1, v0}, Labcd/YJ;-><init>(Labcd/IE;)V

    invoke-virtual {v1, p1}, Labcd/YJ;->j6(Labcd/TJ;)I

    invoke-virtual {v1, p2}, Labcd/YJ;->j6(Labcd/TJ;)I

    invoke-virtual {v1, v5}, Labcd/YJ;->j6(Z)V

    invoke-static {p1, p2}, Labcd/iC;->DW(Labcd/TJ;Labcd/TJ;)Labcd/jK;

    move-result-object v2

    iget-object v0, p0, Labcd/iC;->QX:Labcd/jK;

    instance-of v3, v0, Labcd/WF;

    if-eqz v3, :cond_2

    check-cast v0, Labcd/WF;

    invoke-virtual {v0}, Labcd/WF;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object v0

    invoke-static {v0, v2}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    :goto_0
    new-instance v0, Labcd/cC$c;

    invoke-direct {p0, p1}, Labcd/iC;->j6(Labcd/TJ;)Labcd/cC;

    move-result-object v3

    invoke-direct {p0, p2}, Labcd/iC;->j6(Labcd/TJ;)Labcd/cC;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Labcd/cC$c;-><init>(Labcd/cC;Labcd/cC;)V

    iput-object v0, p0, Labcd/iC;->j3:Labcd/cC$c;

    invoke-static {v1}, Labcd/hC;->j6(Labcd/YJ;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Labcd/iC;->QX:Labcd/jK;

    instance-of v3, v3, Labcd/WF;

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Labcd/iC;->FH(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Labcd/TJ;->EQ()V

    invoke-virtual {p2}, Labcd/TJ;->EQ()V

    invoke-virtual {v1}, Labcd/YJ;->J8()V

    invoke-virtual {v1, p1}, Labcd/YJ;->j6(Labcd/TJ;)I

    invoke-virtual {v1, p2}, Labcd/YJ;->j6(Labcd/TJ;)I

    invoke-virtual {v1, v2}, Labcd/YJ;->j6(Labcd/jK;)V

    iget-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Labcd/iC;->j6(Z)V

    :cond_0
    invoke-static {v1}, Labcd/hC;->j6(Labcd/YJ;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/iC;->DW(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/iC;->Hw(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-static {v0, v2}, Labcd/cK;->j6(Labcd/jK;Labcd/jK;)Labcd/jK;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Labcd/iC;->XL:Labcd/BC;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Labcd/iC;->DW(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public j6(Labcd/mG;Labcd/mG;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/mG;",
            "Labcd/mG;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/iC;->FH()V

    new-instance v0, Labcd/UJ;

    invoke-direct {v0}, Labcd/UJ;-><init>()V

    new-instance v1, Labcd/UJ;

    invoke-direct {v1}, Labcd/UJ;-><init>()V

    iget-object v2, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-virtual {v0, v2, p1}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    iget-object v2, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-virtual {v1, v2, p2}, Labcd/UJ;->DW(Labcd/IE;Labcd/YD;)V

    invoke-virtual {p0, v0, v1}, Labcd/iC;->j6(Labcd/TJ;Labcd/TJ;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected j6(CLabcd/tC;I)V
    .registers 6

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, p3}, Labcd/tC;->j6(Ljava/io/OutputStream;I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected j6(IIII)V
    .registers 9

    const/16 v3, 0x40

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x2d

    add-int/lit8 v1, p1, 0x1

    sub-int v2, p2, p1

    invoke-direct {p0, v0, v1, v2}, Labcd/iC;->j6(CII)V

    const/16 v0, 0x2b

    add-int/lit8 v1, p3, 0x1

    sub-int v2, p4, p3

    invoke-direct {p0, v0, v1, v2}, Labcd/iC;->j6(CII)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public j6(Labcd/HF;Labcd/tC;Labcd/tC;)V
    .registers 8

    invoke-virtual {p1}, Labcd/HF;->J8()I

    move-result v1

    invoke-virtual {p1}, Labcd/HF;->EQ()I

    move-result v0

    invoke-virtual {p1}, Labcd/HF;->we()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Labcd/HF;->we()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/JF;

    invoke-virtual {v0}, Labcd/JF;->v5()I

    move-result v0

    :cond_0
    iget-object v2, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    invoke-virtual {p1}, Labcd/HF;->tp()[B

    move-result-object v3

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Labcd/HF;->J0()Labcd/HF$a;

    move-result-object v0

    sget-object v1, Labcd/HF$a;->j6:Labcd/HF$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Labcd/HF;->Ws()Labcd/kC;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Labcd/iC;->j6(Labcd/kC;Labcd/tC;Labcd/tC;)V

    :cond_1
    return-void
.end method

.method public j6(Labcd/UE;)V
    .registers 7

    iget-object v0, p0, Labcd/iC;->gn:Labcd/IE;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/IE;->FH()V

    :cond_0
    iput-object p1, p0, Labcd/iC;->VH:Labcd/UE;

    iget-object v0, p0, Labcd/iC;->VH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    iput-object v0, p0, Labcd/iC;->gn:Labcd/IE;

    iget-object v0, p0, Labcd/iC;->gn:Labcd/IE;

    invoke-static {v0}, Labcd/cC;->j6(Labcd/IE;)Labcd/cC;

    move-result-object v0

    new-instance v1, Labcd/cC$c;

    invoke-direct {v1, v0, v0}, Labcd/cC$c;-><init>(Labcd/cC;Labcd/cC;)V

    iput-object v1, p0, Labcd/iC;->j3:Labcd/cC$c;

    iget-object v0, p0, Labcd/iC;->VH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/gC;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gC;

    invoke-virtual {v0}, Labcd/gC;->DW()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0, v1}, Labcd/iC;->DW(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p0, v1}, Labcd/iC;->j6(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Labcd/gC;->FH()Z

    move-result v0

    invoke-virtual {p0, v0}, Labcd/iC;->j6(Z)V

    iget-object v0, p0, Labcd/iC;->VH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    const-string v1, "diff"

    const/4 v2, 0x0

    const-string v3, "algorithm"

    sget-object v4, Labcd/eC$a;->DW:Labcd/eC$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/eC$a;

    invoke-static {v0}, Labcd/eC;->j6(Labcd/eC$a;)Labcd/eC;

    move-result-object v0

    iput-object v0, p0, Labcd/iC;->EQ:Labcd/eC;

    return-void
.end method

.method public j6(Labcd/YD;Labcd/YD;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/iC;->DW(Labcd/YD;Labcd/YD;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/iC;->j6(Ljava/util/List;)V

    return-void
.end method

.method public j6(Labcd/hC;)V
    .registers 5

    invoke-direct {p0, p1}, Labcd/iC;->DW(Labcd/hC;)Labcd/iC$a;

    move-result-object v0

    iget-object v1, v0, Labcd/iC$a;->j6:Labcd/HF;

    iget-object v2, v0, Labcd/iC$a;->DW:Labcd/tC;

    iget-object v0, v0, Labcd/iC$a;->FH:Labcd/tC;

    invoke-virtual {p0, v1, v2, v0}, Labcd/iC;->j6(Labcd/HF;Labcd/tC;Labcd/tC;)V

    return-void
.end method

.method public j6(Labcd/kC;Labcd/tC;Labcd/tC;)V
    .registers 14

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    invoke-direct {p0, p1, v2}, Labcd/iC;->FH(Ljava/util/List;I)I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/jC;

    invoke-virtual {v0}, Labcd/jC;->FH()I

    move-result v4

    iget v5, p0, Labcd/iC;->u7:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Labcd/jC;->Hw()I

    move-result v5

    iget v6, p0, Labcd/iC;->u7:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p2}, Labcd/tC;->j6()I

    move-result v6

    invoke-virtual {v1}, Labcd/jC;->v5()I

    move-result v8

    iget v9, p0, Labcd/iC;->u7:I

    add-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p3}, Labcd/tC;->j6()I

    move-result v6

    invoke-virtual {v1}, Labcd/jC;->Zo()I

    move-result v1

    iget v9, p0, Labcd/iC;->u7:I

    add-int/2addr v1, v9

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v4, v8, v5, v9}, Labcd/iC;->j6(IIII)V

    move-object v6, v0

    move v1, v2

    :goto_1
    if-lt v4, v8, :cond_1

    if-lt v5, v9, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Labcd/jC;->FH()I

    move-result v0

    if-lt v4, v0, :cond_2

    add-int/lit8 v0, v7, 0x1

    if-ge v0, v1, :cond_4

    :cond_2
    invoke-virtual {p0, p2, v4}, Labcd/iC;->DW(Labcd/tC;I)V

    invoke-direct {p0, p2, v4}, Labcd/iC;->Hw(Labcd/tC;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    sget-object v2, Labcd/iC;->j6:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    add-int/lit8 v0, v4, 0x1

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v4, v0

    :goto_3
    invoke-static {v6, v4, v2}, Labcd/iC;->j6(Labcd/jC;II)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jC;

    move-object v6, v0

    move v5, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Labcd/jC;->v5()I

    move-result v0

    if-ge v4, v0, :cond_6

    invoke-virtual {p0, p2, v4}, Labcd/iC;->FH(Labcd/tC;I)V

    invoke-direct {p0, p2, v4}, Labcd/iC;->Hw(Labcd/tC;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    sget-object v2, Labcd/iC;->j6:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Labcd/jC;->Zo()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-virtual {p0, p3, v5}, Labcd/iC;->j6(Labcd/tC;I)V

    invoke-direct {p0, p3, v5}, Labcd/iC;->Hw(Labcd/tC;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Labcd/iC;->Zo:Ljava/io/OutputStream;

    sget-object v2, Labcd/iC;->j6:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    move v0, v4

    goto :goto_2

    :cond_7
    move v5, v2

    goto :goto_1

    :cond_8
    move v0, v4

    goto :goto_2

    :cond_9
    move v2, v5

    goto :goto_3
.end method

.method protected j6(Labcd/tC;I)V
    .registers 4

    const/16 v0, 0x2b

    invoke-virtual {p0, v0, p1, p2}, Labcd/iC;->j6(CLabcd/tC;I)V

    return-void
.end method

.method protected j6(Ljava/io/OutputStream;Labcd/hC;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Labcd/hC;->Zo()Labcd/WD;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/iC;->j6(Labcd/WD;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Labcd/hC;->FH()Labcd/WD;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/iC;->j6(Labcd/WD;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v0

    invoke-virtual {p2}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p2}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/iC;->Ws:Ljava/lang/String;

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Labcd/hC;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-virtual {p0, v0}, Labcd/iC;->j6(Labcd/hC;)V

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/iC;->FH()V

    new-instance v0, Labcd/BC;

    iget-object v1, p0, Labcd/iC;->VH:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/BC;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/iC;->XL:Labcd/BC;

    goto :goto_0
.end method
