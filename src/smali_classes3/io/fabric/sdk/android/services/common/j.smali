.class public abstract Lio/fabric/sdk/android/services/common/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/j$a;,
        Lio/fabric/sdk/android/services/common/j$b;
    }
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/j;->j6:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/j;->DW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/j;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/j;->DW:Ljava/lang/String;

    return-object v0
.end method
