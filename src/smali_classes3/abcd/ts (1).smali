.class public final Labcd/ts;
.super Labcd/Bs;


# static fields
.field public static final DW:Labcd/ts;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/ts;->j6(C)Labcd/ts;

    move-result-object v0

    sput-object v0, Labcd/ts;->DW:Labcd/ts;

    return-void
.end method

.method private constructor <init>(C)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bs;-><init>(I)V

    return-void
.end method

.method public static j6(C)Labcd/ts;
    .registers 2

    new-instance v0, Labcd/ts;

    invoke-direct {v0, p0}, Labcd/ts;-><init>(C)V

    return-object v0
.end method

.method public static j6(I)Labcd/ts;
    .registers 3

    int-to-char v0, p0

    if-ne v0, p0, :cond_8

    invoke-static {v0}, Labcd/ts;->j6(C)Labcd/ts;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus char value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "char"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->Hw:Labcd/Qs;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "char{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
