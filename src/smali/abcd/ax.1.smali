.class public final enum Labcd/ax;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/ax;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid Ad request."

    invoke-direct {v0, v1, v3, v2}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/ax;->j6:Labcd/ax;

    new-instance v0, Labcd/ax;

    const-string v1, "NO_FILL"

    const-string v2, "Ad request successful, but no ad returned due to lack of ad inventory."

    invoke-direct {v0, v1, v4, v2}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/ax;->DW:Labcd/ax;

    new-instance v0, Labcd/ax;

    const-string v1, "NETWORK_ERROR"

    const-string v2, "A network error occurred."

    invoke-direct {v0, v1, v5, v2}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/ax;->FH:Labcd/ax;

    new-instance v0, Labcd/ax;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "There was an internal error."

    invoke-direct {v0, v1, v6, v2}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/ax;->Hw:Labcd/ax;

    const/4 v0, 0x4

    new-array v0, v0, [Labcd/ax;

    sget-object v1, Labcd/ax;->j6:Labcd/ax;

    aput-object v1, v0, v3

    sget-object v1, Labcd/ax;->DW:Labcd/ax;

    aput-object v1, v0, v4

    sget-object v1, Labcd/ax;->FH:Labcd/ax;

    aput-object v1, v0, v5

    sget-object v1, Labcd/ax;->Hw:Labcd/ax;

    aput-object v1, v0, v6

    sput-object v0, Labcd/ax;->v5:[Labcd/ax;

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

    move-result-object v0

    check-cast v0, Labcd/ax;

    return-object v0
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
