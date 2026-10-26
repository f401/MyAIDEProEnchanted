.class public final enum Ltv/ouya/console/api/store/StoreSection$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/store/StoreSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltv/ouya/console/api/store/StoreSection$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Ltv/ouya/console/api/store/StoreSection$a;

.field private static final FH:[Ltv/ouya/console/api/store/StoreSection$a;

.field public static final enum j6:Ltv/ouya/console/api/store/StoreSection$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ltv/ouya/console/api/store/StoreSection$a;

    const-string v1, "TAG"

    invoke-direct {v0, v1, v3}, Ltv/ouya/console/api/store/StoreSection$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltv/ouya/console/api/store/StoreSection$a;->j6:Ltv/ouya/console/api/store/StoreSection$a;

    new-instance v1, Ltv/ouya/console/api/store/StoreSection$a;

    const-string v2, "LIST"

    invoke-direct {v1, v2, v4}, Ltv/ouya/console/api/store/StoreSection$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltv/ouya/console/api/store/StoreSection$a;->DW:Ltv/ouya/console/api/store/StoreSection$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ltv/ouya/console/api/store/StoreSection$a;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Ltv/ouya/console/api/store/StoreSection$a;->FH:[Ltv/ouya/console/api/store/StoreSection$a;

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

.method public static valueOf(Ljava/lang/String;)Ltv/ouya/console/api/store/StoreSection$a;
    .locals 1

    const-class v0, Ltv/ouya/console/api/store/StoreSection$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/store/StoreSection$a;

    return-object v0
.end method

.method public static values()[Ltv/ouya/console/api/store/StoreSection$a;
    .locals 1

    sget-object v0, Ltv/ouya/console/api/store/StoreSection$a;->FH:[Ltv/ouya/console/api/store/StoreSection$a;

    invoke-virtual {v0}, [Ltv/ouya/console/api/store/StoreSection$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/ouya/console/api/store/StoreSection$a;

    return-object v0
.end method
