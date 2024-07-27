.class public final Labcd/xs;
.super Labcd/Bs;


# static fields
.field public static final DW:Labcd/xs;

.field public static final FH:Labcd/xs;

.field public static final Hw:Labcd/xs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Labcd/xs;->j6(I)Labcd/xs;

    move-result-object v0

    sput-object v0, Labcd/xs;->DW:Labcd/xs;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Labcd/xs;->j6(I)Labcd/xs;

    move-result-object v0

    sput-object v0, Labcd/xs;->FH:Labcd/xs;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Labcd/xs;->j6(I)Labcd/xs;

    move-result-object v0

    sput-object v0, Labcd/xs;->Hw:Labcd/xs;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bs;-><init>(I)V

    return-void
.end method

.method public static j6(I)Labcd/xs;
    .registers 2

    new-instance v0, Labcd/xs;

    invoke-direct {v0, p0}, Labcd/xs;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "float"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->Zo:Labcd/Qs;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "float{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
