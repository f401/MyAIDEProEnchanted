.class public final enum Labcd/kA;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/kA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/kA;

.field public static final enum FH:Labcd/kA;

.field private static final Hw:[Labcd/kA;

.field public static final enum j6:Labcd/kA;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Labcd/kA;

    const-string v1, "USE_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/kA;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/kA;->j6:Labcd/kA;

    new-instance v1, Labcd/kA;

    const-string v3, "SKIP_CACHE_LOOKUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Labcd/kA;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/kA;->DW:Labcd/kA;

    new-instance v3, Labcd/kA;

    const-string v5, "IGNORE_CACHE_EXPIRATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Labcd/kA;-><init>(Ljava/lang/String;I)V

    sput-object v3, Labcd/kA;->FH:Labcd/kA;

    const/4 v5, 0x3

    new-array v5, v5, [Labcd/kA;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Labcd/kA;->Hw:[Labcd/kA;

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

.method public static valueOf(Ljava/lang/String;)Labcd/kA;
    .registers 2

    const-class v0, Labcd/kA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/kA;

    return-object p0
.end method

.method public static values()[Labcd/kA;
    .registers 1

    sget-object v0, Labcd/kA;->Hw:[Labcd/kA;

    invoke-virtual {v0}, [Labcd/kA;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/kA;

    return-object v0
.end method
