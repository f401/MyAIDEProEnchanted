.class public final enum Landroidx/lifecycle/Lifecycle$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/lifecycle/Lifecycle$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/lifecycle/Lifecycle$State;

.field public static final enum CREATED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum DESTROYED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum RESUMED:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum STARTED:Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v3}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v5}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v7}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v1, 0x5

    new-array v1, v1, [Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v2, v1, v3

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v2, v1, v4

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v2, v1, v5

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Landroidx/lifecycle/Lifecycle$State;->$VALUES:[Landroidx/lifecycle/Lifecycle$State;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$State;
    .registers 2

    const-class v0, Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$State;
    .registers 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->$VALUES:[Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, [Landroidx/lifecycle/Lifecycle$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method


# virtual methods
.method public isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
