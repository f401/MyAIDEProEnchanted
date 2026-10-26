.class public final enum Labcd/bx;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/bx;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/bx;

.field public static final enum FH:Labcd/bx;

.field private static final Hw:[Labcd/bx;

.field public static final enum j6:Labcd/bx;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Labcd/bx;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Labcd/bx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/bx;->j6:Labcd/bx;

    new-instance v1, Labcd/bx;

    const-string v2, "MALE"

    invoke-direct {v1, v2, v5}, Labcd/bx;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/bx;->DW:Labcd/bx;

    new-instance v2, Labcd/bx;

    const-string v3, "FEMALE"

    invoke-direct {v2, v3, v6}, Labcd/bx;-><init>(Ljava/lang/String;I)V

    sput-object v2, Labcd/bx;->FH:Labcd/bx;

    const/4 v3, 0x3

    new-array v3, v3, [Labcd/bx;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Labcd/bx;->Hw:[Labcd/bx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/bx;
    .locals 1

    const-class v0, Labcd/bx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/bx;

    return-object v0
.end method

.method public static values()[Labcd/bx;
    .locals 1

    sget-object v0, Labcd/bx;->Hw:[Labcd/bx;

    invoke-virtual {v0}, [Labcd/bx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/bx;

    return-object v0
.end method
