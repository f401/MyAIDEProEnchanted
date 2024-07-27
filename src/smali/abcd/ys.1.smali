.class public final Labcd/ys;
.super Labcd/Bs;


# static fields
.field private static final DW:[Labcd/ys;

.field public static final FH:Labcd/ys;

.field public static final Hw:Labcd/ys;

.field public static final VH:Labcd/ys;

.field public static final Zo:Labcd/ys;

.field public static final gn:Labcd/ys;

.field public static final u7:Labcd/ys;

.field public static final v5:Labcd/ys;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Labcd/ys;

    sput-object v0, Labcd/ys;->DW:[Labcd/ys;

    const/4 v0, -0x1

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->FH:Labcd/ys;

    const/4 v0, 0x0

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->Hw:Labcd/ys;

    const/4 v0, 0x1

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->v5:Labcd/ys;

    const/4 v0, 0x2

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->Zo:Labcd/ys;

    const/4 v0, 0x3

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->VH:Labcd/ys;

    const/4 v0, 0x4

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->gn:Labcd/ys;

    const/4 v0, 0x5

    invoke-static {v0}, Labcd/ys;->j6(I)Labcd/ys;

    move-result-object v0

    sput-object v0, Labcd/ys;->u7:Labcd/ys;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bs;-><init>(I)V

    return-void
.end method

.method public static j6(I)Labcd/ys;
    .registers 4

    sget-object v0, Labcd/ys;->DW:[Labcd/ys;

    const v1, 0x7fffffff

    and-int/2addr v1, p0

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v2

    if-ne v2, p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/ys;

    invoke-direct {v0, p0}, Labcd/ys;-><init>(I)V

    sget-object v2, Labcd/ys;->DW:[Labcd/ys;

    aput-object v0, v2, v1

    goto :goto_0
.end method


# virtual methods
.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "int"

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

    sget-object v0, Labcd/Qs;->VH:Labcd/Qs;

    return-object v0
.end method

.method public rN()I
    .registers 2

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

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
