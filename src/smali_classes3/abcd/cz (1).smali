.class public final enum Labcd/cz;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 9

    new-instance v0, Labcd/cz;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/cz;->j6:Labcd/cz;

    new-instance v1, Labcd/cz;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/cz;->DW:Labcd/cz;

    new-instance v3, Labcd/cz;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/cz;->FH:Labcd/cz;

    new-instance v5, Labcd/cz;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Labcd/cz;-><init>(Ljava/lang/String;I)V

    sput-object v5, Labcd/cz;->Hw:Labcd/cz;

    const/4 v7, 0x4

    new-array v7, v7, [Labcd/cz;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Labcd/cz;->v5:[Labcd/cz;

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
    .registers 3
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

    if-eqz v0, :cond_b

    check-cast p1, Labcd/hz;

    invoke-interface {p1}, Labcd/hz;->v5()Labcd/cz;

    move-result-object p1

    goto :goto_d

    :cond_b
    sget-object p1, Labcd/cz;->DW:Labcd/cz;

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {p0}, Labcd/hz;->v5()Labcd/cz;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/cz;
    .registers 2

    const-class v0, Labcd/cz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/cz;

    return-object p0
.end method

.method public static values()[Labcd/cz;
    .registers 1

    sget-object v0, Labcd/cz;->v5:[Labcd/cz;

    invoke-virtual {v0}, [Labcd/cz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/cz;

    return-object v0
.end method
