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
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Labcd/ax;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid Ad request."

    invoke-direct {v0, v1, v6, v2}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Labcd/ax;->j6:Labcd/ax;

    new-instance v1, Labcd/ax;

    const-string v2, "NO_FILL"

    const-string v3, "Ad request successful, but no ad returned due to lack of ad inventory."

    invoke-direct {v1, v2, v7, v3}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Labcd/ax;->DW:Labcd/ax;

    new-instance v2, Labcd/ax;

    const-string v3, "NETWORK_ERROR"

    const-string v4, "A network error occurred."

    invoke-direct {v2, v3, v8, v4}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Labcd/ax;->FH:Labcd/ax;

    new-instance v3, Labcd/ax;

    const-string v4, "INTERNAL_ERROR"

    const-string v5, "There was an internal error."

    invoke-direct {v3, v4, v9, v5}, Labcd/ax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Labcd/ax;->Hw:Labcd/ax;

    const/4 v4, 0x4

    new-array v4, v4, [Labcd/ax;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v9

    sput-object v4, Labcd/ax;->v5:[Labcd/ax;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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
    .locals 1

    const-class v0, Labcd/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/ax;

    return-object v0
.end method

.method public static values()[Labcd/ax;
    .locals 1

    sget-object v0, Labcd/ax;->v5:[Labcd/ax;

    invoke-virtual {v0}, [Labcd/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/ax;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/ax;->Zo:Ljava/lang/String;

    return-object v0
.end method
