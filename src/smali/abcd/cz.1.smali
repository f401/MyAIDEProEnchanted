.class public final enum Labcd/cz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/cz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/cz;

.field public static final enum FH:Labcd/cz;

.field public static final enum Hw:Labcd/cz;

.field public static final enum j6:Labcd/cz;

.field private static final v5:[Labcd/cz;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Labcd/cz;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cz;->j6:Labcd/cz;

    new-instance v0, Labcd/cz;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cz;->DW:Labcd/cz;

    new-instance v0, Labcd/cz;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v4}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cz;->FH:Labcd/cz;

    new-instance v0, Labcd/cz;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cz;->Hw:Labcd/cz;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/cz;

    sget-object v1, Labcd/cz;->j6:Labcd/cz;

    aput-object v1, v0, v2

    sget-object v1, Labcd/cz;->DW:Labcd/cz;

    aput-object v1, v0, v3

    sget-object v1, Labcd/cz;->FH:Labcd/cz;

    aput-object v1, v0, v4

    sget-object v1, Labcd/cz;->Hw:Labcd/cz;

    aput-object v1, v0, v5

    sput-object v0, Labcd/cz;->v5:[Labcd/cz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static j6(Labcd/hz;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Labcd/hz;",
            "TY;)I"
        }
    .end annotation

    instance-of v0, p1, Labcd/hz;

    if-eqz v0, :cond_0

    check-cast p1, Labcd/hz;

    invoke-interface {p1}, Labcd/hz;->v5()Labcd/cz;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p0}, Labcd/hz;->v5()Labcd/cz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :cond_0
    sget-object v0, Labcd/cz;->DW:Labcd/cz;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/cz;
    .registers 2

    const-class v0, Labcd/cz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/cz;

    return-object v0
.end method

.method public static values()[Labcd/cz;
    .registers 1

    sget-object v0, Labcd/cz;->v5:[Labcd/cz;

    invoke-virtual {v0}, [Labcd/cz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/cz;

    return-object v0
.end method
