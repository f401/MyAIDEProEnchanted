.class public Landroidx/core/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

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


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Landroidx/core/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-static {p1}, Landroidx/core/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentReader;
    .registers 2

    new-instance v0, Landroidx/core/app/ShareCompat$IntentReader;

    invoke-direct {v0, p0}, Landroidx/core/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 9

    const/16 v4, 0x20

    move v0, p2

    :goto_3
    if-ge v0, p3, :cond_64

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_15

    const-string v1, "&lt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1f

    const-string v1, "&gt;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_1f
    const/16 v2, 0x26

    if-ne v1, v2, :cond_29

    const-string v1, "&amp;"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_29
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_2f

    if-ge v1, v4, :cond_49

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_49
    if-ne v1, v4, :cond_60

    :goto_4b
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_5c

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_5c

    const-string v0, "&nbsp;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_4b

    :cond_5c
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_64
    return-void
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_c
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_5

    :catch_13
    move-exception v1

    const-string v2, "IntentReader"

    const-string v3, "Could not retrieve icon for calling activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_c
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_5

    :catch_13
    move-exception v1

    const-string v2, "IntentReader"

    const-string v3, "Could not retrieve icon for calling application"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_c
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_5

    :catch_18
    move-exception v1

    const-string v2, "IntentReader"

    const-string v3, "Could not retrieve label for calling application"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_38

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_19

    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    if-eqz v0, :cond_38

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_26

    invoke-static {v0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Landroidx/core/app/ShareCompat$IntentReader;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_38
    move-object v0, v1

    goto :goto_18
.end method

.method public getStream()Landroid/net/Uri;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    :cond_14
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_1e
    return-object v0

    :cond_1f
    if-nez p1, :cond_2c

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_1e

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream items available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStreamCount()I
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    :cond_14
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1c
    return v0

    :cond_1d
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1c
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultipleShare()Z
    .registers 3

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShareIntent()Z
    .registers 3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isSingleShare()Z
    .registers 3

    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
