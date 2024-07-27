.class public final Labcd/us;
.super Labcd/Cs;


# static fields
.field public static final DW:Labcd/us;

.field public static final FH:Labcd/us;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Labcd/us;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Labcd/us;-><init>(J)V

    sput-object v0, Labcd/us;->DW:Labcd/us;

    new-instance v0, Labcd/us;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Labcd/us;-><init>(J)V

    sput-object v0, Labcd/us;->FH:Labcd/us;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/Cs;-><init>(J)V

    return-void
.end method

.method public static j6(J)Labcd/us;
    .registers 4

    new-instance v0, Labcd/us;

    invoke-direct {v0, p0, p1}, Labcd/us;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "double"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Labcd/Cs;->lg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->v5:Labcd/Qs;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Labcd/Cs;->lg()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double{0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Labcd/Yt;->DW(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
