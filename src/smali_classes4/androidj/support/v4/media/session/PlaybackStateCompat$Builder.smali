.class public final Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:J

.field private mActiveItemId:J

.field private mBufferedPosition:J

.field private final mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mRate:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    return-void
.end method

.method public constructor <init>(Landroidj/support/v4/media/session/PlaybackStateCompat;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    iget v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mState:I

    iput v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    iget-wide v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    iget v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    iput v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    iget-wide v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    iget-wide v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    iget-wide v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mActions:J

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    iget v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    iput v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorCode:I

    iget-object v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    iget-object v1, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_39
    iget-wide v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    iput-wide v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    iget-object v0, p1, Landroidj/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addCustomAction(Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You may not add a null CustomAction to PlaybackStateCompat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 6

    new-instance v0, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->addCustomAction(Landroidj/support/v4/media/session/PlaybackStateCompat$CustomAction;)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidj/support/v4/media/session/PlaybackStateCompat;
    .registers 20

    new-instance v2, Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v0, p0

    iget v3, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    move-object/from16 v0, p0

    iget v8, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    move-object/from16 v0, p0

    iget v11, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorCode:I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    move-object/from16 v0, p0

    iget-object v15, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mCustomActions:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Landroidj/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-object v2
.end method

.method public setActions(J)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 4

    iput-wide p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    return-object p0
.end method

.method public setActiveQueueItemId(J)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 4

    iput-wide p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mActiveItemId:J

    return-object p0
.end method

.method public setBufferedPosition(J)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 4

    iput-wide p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    return-object p0
.end method

.method public setErrorMessage(ILjava/lang/CharSequence;)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 3

    iput p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorCode:I

    iput-object p2, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setState(IJF)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setState(IJFJ)Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;
    .registers 7

    iput p1, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    iput-wide p2, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    iput-wide p5, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    iput p4, p0, Landroidj/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    return-object p0
.end method
