.class public final enum Landroidx/annotation/experimental/Experimental$Level;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/experimental/Experimental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/annotation/experimental/Experimental$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/annotation/experimental/Experimental$Level;

.field public static final enum ERROR:Landroidx/annotation/experimental/Experimental$Level;

.field public static final enum WARNING:Landroidx/annotation/experimental/Experimental$Level;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroidx/annotation/experimental/Experimental$Level;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Landroidx/annotation/experimental/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/experimental/Experimental$Level;->WARNING:Landroidx/annotation/experimental/Experimental$Level;

    new-instance v0, Landroidx/annotation/experimental/Experimental$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Landroidx/annotation/experimental/Experimental$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/experimental/Experimental$Level;->ERROR:Landroidx/annotation/experimental/Experimental$Level;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/annotation/experimental/Experimental$Level;

    sget-object v2, Landroidx/annotation/experimental/Experimental$Level;->WARNING:Landroidx/annotation/experimental/Experimental$Level;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroidx/annotation/experimental/Experimental$Level;->$VALUES:[Landroidx/annotation/experimental/Experimental$Level;

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

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/experimental/Experimental$Level;
    .registers 2

    const-class v0, Landroidx/annotation/experimental/Experimental$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/annotation/experimental/Experimental$Level;

    return-object v0
.end method

.method public static values()[Landroidx/annotation/experimental/Experimental$Level;
    .registers 1

    sget-object v0, Landroidx/annotation/experimental/Experimental$Level;->$VALUES:[Landroidx/annotation/experimental/Experimental$Level;

    invoke-virtual {v0}, [Landroidx/annotation/experimental/Experimental$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/experimental/Experimental$Level;

    return-object v0
.end method
