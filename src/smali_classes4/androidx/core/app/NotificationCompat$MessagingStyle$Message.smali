.class public final Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final KEY_NOTIFICATION_PERSON:Ljava/lang/String; = "sender_person"

.field static final KEY_PERSON:Ljava/lang/String; = "person"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private final mPerson:Landroidx/core/app/Person;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    iput-wide p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    iput-object p4, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1e

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_1e
    return-object v2
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "text"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "time"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    :goto_11
    move-object v0, v2

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "person"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "person"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v0

    :goto_25
    new-instance v1, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    const-string v3, "text"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    :cond_57
    const-string v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extras"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_6c
    move-object v0, v1

    goto :goto_12

    :cond_6e
    const-string v0, "sender_person"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_89

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_89

    const-string v0, "sender_person"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    invoke-static {v0}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v0

    goto :goto_25

    :cond_89
    const-string v0, "sender"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    const-string v1, "sender"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;
    :try_end_a3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_a3} :catch_a8

    move-result-object v0

    goto :goto_25

    :cond_a5
    move-object v0, v2

    goto/16 :goto_25

    :catch_a8
    move-exception v0

    goto/16 :goto_11
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/core/app/NotificationCompat$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    array-length v0, p0

    if-ge v1, v0, :cond_22

    aget-object v0, p0, v1

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1e

    aget-object v0, p0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_22
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_e

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_e
    const-string v1, "time"

    iget-wide v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-eqz v1, :cond_33

    const-string v2, "sender"

    invoke-virtual {v1}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4f

    const-string v1, "sender_person"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v2}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_33
    :goto_33
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_3c

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_45

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_45
    iget-object v1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_4e

    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4e
    return-object v0

    :cond_4f
    const-string v1, "person"

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    invoke-virtual {v2}, Landroidx/core/app/Person;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_33
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPerson()Landroidx/core/app/Person;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroidx/core/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .registers 3

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object p0
.end method
