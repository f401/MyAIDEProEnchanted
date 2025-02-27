.class public final Landroidj/support/v4/app/RemoteInput$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowFreeFormInput:Z

.field private mChoices:[Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroidj/support/v4/app/RemoteInput$Builder;
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    return-object p0
.end method

.method public build()Landroidj/support/v4/app/RemoteInput;
    .registers 7

    new-instance v0, Landroidj/support/v4/app/RemoteInput;

    iget-object v1, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    iget-object v5, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct/range {v0 .. v5}, Landroidj/support/v4/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowFreeFormInput(Z)Landroidj/support/v4/app/RemoteInput$Builder;
    .registers 2

    iput-boolean p1, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mAllowFreeFormInput:Z

    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroidj/support/v4/app/RemoteInput$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroidj/support/v4/app/RemoteInput$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
