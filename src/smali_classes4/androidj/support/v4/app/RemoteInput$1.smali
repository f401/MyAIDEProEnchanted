.class final Landroidj/support/v4/app/RemoteInput$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroidj/support/v4/app/RemoteInput;
    .registers 12

    new-instance v0, Landroidj/support/v4/app/RemoteInput;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Landroidj/support/v4/app/RemoteInput$1;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroidj/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroidj/support/v4/app/RemoteInput;
    .registers 3

    new-array v0, p1, [Landroidj/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Landroidj/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .registers 3

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/RemoteInput$1;->newArray(I)[Landroidj/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method
