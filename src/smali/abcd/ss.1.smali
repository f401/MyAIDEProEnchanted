.class public final Labcd/ss;
.super Labcd/Bs;


# static fields
.field public static final DW:Labcd/ss;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/ss;->j6(B)Labcd/ss;

    move-result-object v0

    sput-object v0, Labcd/ss;->DW:Labcd/ss;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0, p1}, Labcd/Bs;-><init>(I)V

    return-void
.end method

.method public static j6(B)Labcd/ss;
    .locals 1

    new-instance v0, Labcd/ss;

    invoke-direct {v0, p0}, Labcd/ss;-><init>(B)V

    return-object v0
.end method

.method public static j6(I)Labcd/ss;
    .locals 2

    int-to-byte v0, p0

    if-ne v0, p0, :cond_0

    invoke-static {v0}, Labcd/ss;->j6(B)Labcd/ss;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus byte value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public Zo()Ljava/lang/String;
    .locals 1

    const-string v0, "byte"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Labcd/Qs;
    .locals 1

    sget-object v0, Labcd/Qs;->FH:Labcd/Qs;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byte{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->Hw(I)Ljava/lang/String;

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
