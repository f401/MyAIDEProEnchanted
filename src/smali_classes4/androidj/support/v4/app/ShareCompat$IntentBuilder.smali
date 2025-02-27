.class public Landroidj/support/v4/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidj.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "androidj.support.v4.app.EXTRA_CALLING_ACTIVITY"

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    array-length v0, v2

    :goto_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v2, :cond_1d

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_23
    move v0, v1

    goto :goto_a
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    array-length v0, v3

    :goto_c
    array-length v4, p2

    add-int/2addr v4, v0

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    array-length v3, p2

    invoke-static {p2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_1d
    move v0, v1

    goto :goto_c
.end method

.method public static from(Landroid/app/Activity;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 2

    new-instance v0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    const-string v0, "android.intent.extra.BCC"

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public addEmailCc(Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEmailCc([Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    const-string v0, "android.intent.extra.CC"

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public addEmailTo(Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEmailTo([Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    const-string v0, "android.intent.extra.EMAIL"

    invoke-direct {p0, v0, p1}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public addStream(Landroid/net/Uri;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_15

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object p0

    :goto_14
    return-object p0

    :cond_15
    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v1, :cond_20

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    :cond_20
    if-eqz v0, :cond_2e

    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public createChooserIntent()Landroid/content/Intent;
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 8

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    const-string v1, "android.intent.extra.EMAIL"

    iget-object v3, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    :cond_10
    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    const-string v1, "android.intent.extra.CC"

    iget-object v3, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    :cond_1d
    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v1, :cond_2a

    const-string v1, "android.intent.extra.BCC"

    iget-object v3, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    :cond_2a
    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v1, :cond_8e

    iget-object v1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_8e

    move v1, v0

    :goto_37
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_6b

    if-eqz v3, :cond_6b

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_90

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_90

    iget-object v4, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_69
    iput-object v6, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    :cond_6b
    if-eqz v1, :cond_8b

    if-nez v3, :cond_8b

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_8b
    :goto_8b
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0

    :cond_8e
    move v1, v2

    goto :goto_37

    :cond_90
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_69

    :cond_98
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_8b
.end method

.method public setChooserTitle(I)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3
    .param p1  # I
        .annotation build Landroidj/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEmailCc([Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setEmailTo([Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setHtmlText(Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;

    :cond_18
    return-object p0
.end method

.method public setStream(Landroid/net/Uri;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Landroidj/support/v4/app/ShareCompat$IntentBuilder;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public startChooser()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidj/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
