.class public final enum Labcd/ax;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/ax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/ax;

.field public static final enum FH:Labcd/ax;

.field public static final enum Hw:Labcd/ax;

.field public static final enum j6:Labcd/ax;

.field private static final v5:[Labcd/ax;


# instance fields
.field private final Zo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Labcd/ax;

    const-string v1, "Invalid Ad request."

    const-string v2, "INVALID_REQUEST"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/ax;->j6:Labcd/ax;

    new-instance v1, Labcd/ax;

    const-string v2, "Ad request successful, but no ad returned due to lack of ad inventory."

    const-string v4, "NO_FILL"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Labcd/ax;->DW:Labcd/ax;

    new-instance v2, Labcd/ax;

    const-string v4, "A network error occurred."

    const-string v6, "NETWORK_ERROR"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Labcd/ax;->FH:Labcd/ax;

    new-instance v4, Labcd/ax;

    const-string v6, "There was an internal error."

    const-string v8, "INTERNAL_ERROR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Labcd/ax;->Hw:Labcd/ax;

    const/4 v6, 0x4

    new-array v6, v6, [Labcd/ax;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Labcd/ax;->v5:[Labcd/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/ax;->Zo:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/ax;
    .registers 2

    const-class v0, Labcd/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/ax;

    return-object p0
.end method

.method public static values()[Labcd/ax;
    .registers 1

    sget-object v0, Labcd/ax;->v5:[Labcd/ax;

    invoke-virtual {v0}, [Labcd/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/ax;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/ax;->Zo:Ljava/lang/String;

    return-object v0
.end method
