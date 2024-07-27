.class public final Labcd/rs;
.super Labcd/Bs;


# static fields
.field public static final DW:Labcd/rs;

.field public static final FH:Labcd/rs;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/rs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/rs;-><init>(Z)V

    sput-object v0, Labcd/rs;->DW:Labcd/rs;

    new-instance v0, Labcd/rs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/rs;-><init>(Z)V

    sput-object v0, Labcd/rs;->FH:Labcd/rs;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Bs;-><init>(I)V

    return-void
.end method

.method public static j6(I)Labcd/rs;
    .registers 3

    if-nez p0, :cond_0

    sget-object v0, Labcd/rs;->DW:Labcd/rs;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Labcd/rs;->FH:Labcd/rs;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus value: "

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
    .registers 2

    const-string v0, "boolean"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/rs;->rN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->DW:Labcd/Qs;

    return-object v0
.end method

.method public rN()Z
    .registers 2

    invoke-virtual {p0}, Labcd/Bs;->Ws()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/rs;->rN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "boolean{false}"

    goto :goto_0
.end method
