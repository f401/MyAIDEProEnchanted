.class public final enum Labcd/Gw$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Labcd/Gw$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/Gw$a;

.field private static final FH:[Labcd/Gw$a;

.field public static final enum j6:Labcd/Gw$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Labcd/Gw$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Labcd/Gw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Labcd/Gw$a;->j6:Labcd/Gw$a;

    new-instance v1, Labcd/Gw$a;

    const-string v2, "POST"

    invoke-direct {v1, v2, v4}, Labcd/Gw$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Labcd/Gw$a;->DW:Labcd/Gw$a;

    const/4 v2, 0x2

    new-array v2, v2, [Labcd/Gw$a;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Labcd/Gw$a;->FH:[Labcd/Gw$a;

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

.method public static valueOf(Ljava/lang/String;)Labcd/Gw$a;
    .locals 1

    const-class v0, Labcd/Gw$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/Gw$a;

    return-object v0
.end method

.method public static values()[Labcd/Gw$a;
    .locals 1

    sget-object v0, Labcd/Gw$a;->FH:[Labcd/Gw$a;

    invoke-virtual {v0}, [Labcd/Gw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/Gw$a;

    return-object v0
.end method
