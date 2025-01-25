.class public final enum Ltv/ouya/console/api/i$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltv/ouya/console/api/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Ltv/ouya/console/api/i$a;

.field public static final enum FH:Ltv/ouya/console/api/i$a;

.field private static final Hw:[Ltv/ouya/console/api/i$a;

.field public static final enum j6:Ltv/ouya/console/api/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ltv/ouya/console/api/i$a;

    const-string v1, "OUYA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltv/ouya/console/api/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/ouya/console/api/i$a;->j6:Ltv/ouya/console/api/i$a;

    new-instance v1, Ltv/ouya/console/api/i$a;

    const-string v3, "MOJO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltv/ouya/console/api/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltv/ouya/console/api/i$a;->DW:Ltv/ouya/console/api/i$a;

    new-instance v3, Ltv/ouya/console/api/i$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltv/ouya/console/api/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltv/ouya/console/api/i$a;->FH:Ltv/ouya/console/api/i$a;

    const/4 v5, 0x3

    new-array v5, v5, [Ltv/ouya/console/api/i$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ltv/ouya/console/api/i$a;->Hw:[Ltv/ouya/console/api/i$a;

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

.method public static valueOf(Ljava/lang/String;)Ltv/ouya/console/api/i$a;
    .registers 2

    const-class v0, Ltv/ouya/console/api/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltv/ouya/console/api/i$a;

    return-object p0
.end method

.method public static values()[Ltv/ouya/console/api/i$a;
    .registers 1

    sget-object v0, Ltv/ouya/console/api/i$a;->Hw:[Ltv/ouya/console/api/i$a;

    invoke-virtual {v0}, [Ltv/ouya/console/api/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/ouya/console/api/i$a;

    return-object v0
.end method
