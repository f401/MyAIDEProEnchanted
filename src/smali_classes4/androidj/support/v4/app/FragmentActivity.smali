.class public Landroidj/support/v4/app/FragmentActivity;
.super Landroidj/support/v4/app/BaseFragmentActivityJB;

# interfaces
.implements Landroidj/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroidj/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroidj/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;-><init>()V

    new-instance v0, Landroidj/support/v4/app/FragmentActivity$1;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/FragmentActivity$1;-><init>(Landroidj/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroidj/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroidj/support/v4/app/FragmentActivity;)V

    invoke-static {v0}, Landroidj/support/v4/app/FragmentController;->createController(Landroidj/support/v4/app/FragmentHostCallback;)Landroidj/support/v4/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mStopped:Z

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mReallyStopped:Z

    return-void
.end method

.method private allocateRequestIndex(Landroidj/support/v4/app/Fragment;)I
    .registers 6

    const v3, 0xfffe

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroidj/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lt v0, v3, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_25

    iget v0, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_13

    :cond_25
    iget v0, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    iget-object v2, p1, Landroidj/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroidj/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    iget v1, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    return v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_b

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    invoke-static {p3}, Landroidj/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_a

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroidj/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_156

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_131

    move v0, v1

    :goto_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_134

    const/16 v0, 0x45

    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_137

    move v0, v2

    :goto_55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_13b

    const/16 v0, 0x48

    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_13e

    move v0, v3

    :goto_6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_141

    const/16 v0, 0x43

    :goto_75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_144

    const/16 v0, 0x4c

    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_147

    :goto_8c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_14a

    const/16 v0, 0x53

    :goto_97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_a2

    const/16 v2, 0x50

    :cond_a2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_114

    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_114

    if-eqz v2, :cond_114

    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_164

    :try_start_f0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_f4
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_114
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f0 .. :try_end_114} :catch_153

    :cond_114
    :goto_114
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_11e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :sswitch_123
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :sswitch_12a
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    :cond_131
    move v0, v2

    goto/16 :goto_40

    :cond_134
    move v0, v2

    goto/16 :goto_4b

    :cond_137
    const/16 v0, 0x44

    goto/16 :goto_55

    :cond_13b
    move v0, v2

    goto/16 :goto_60

    :cond_13e
    move v0, v2

    goto/16 :goto_6a

    :cond_141
    move v0, v2

    goto/16 :goto_75

    :cond_144
    move v0, v2

    goto/16 :goto_80

    :cond_147
    move v1, v2

    goto/16 :goto_8c

    :cond_14a
    move v0, v2

    goto/16 :goto_97

    :sswitch_14d
    const-string v0, "app"

    goto :goto_f4

    :sswitch_150
    const-string v0, "android"

    goto :goto_f4

    :catch_153
    move-exception v0

    goto :goto_114

    nop

    :sswitch_data_156
    .sparse-switch
        0x0 -> :sswitch_11e
        0x4 -> :sswitch_123
        0x8 -> :sswitch_12a
    .end sparse-switch

    :sswitch_data_164
    .sparse-switch
        0x1000000 -> :sswitch_150
        0x7f000000 -> :sswitch_14d
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_12

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mReallyStopped:Z

    iput-boolean p1, p0, Landroidj/support/v4/app/FragmentActivity;->mRetaining:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->onReallyStop()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->doLoaderStart()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentController;->doLoaderStop(Z)V

    goto :goto_11
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroidj/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->getSupportFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidj/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroidj/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportFragmentManager()Landroidj/support/v4/app/FragmentManager;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->getSupportFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidj/support/v4/app/LoaderManager;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->getSupportLoaderManager()Landroidj/support/v4/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportMediaController()Landroidj/support/v4/media/session/MediaControllerCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroidj/support/v4/media/session/MediaControllerCompat;->getMediaController(Landroid/app/Activity;)Landroidj/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->noteStateNotSaved()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4b

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidj/support/v4/util/SparseArrayCompat;->remove(I)V

    if-nez v0, :cond_22

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :cond_22
    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_43

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_43
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroidj/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_21

    :cond_4b
    invoke-super {p0, p1, p2, p3}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_21
.end method

.method public onAttachFragment(Landroidj/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->getSupportFragmentManager()Landroidj/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onBackPressed()V

    :cond_f
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentController;->attachHost(Landroidj/support/v4/app/Fragment;)V

    invoke-super {p0, p1}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;

    if-eqz v0, :cond_19

    iget-object v3, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    iget-object v4, v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroidj/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v4}, Landroidj/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroidj/support/v4/util/SimpleArrayMap;)V

    :cond_19
    if-eqz p1, :cond_55

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    if-eqz v0, :cond_68

    iget-object v0, v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidj/support/v4/app/FragmentManagerNonConfig;

    :goto_27
    invoke-virtual {v4, v3, v0}, Landroidj/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Landroidj/support/v4/app/FragmentManagerNonConfig;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4e

    if-eqz v3, :cond_4e

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_6a

    :cond_4e
    const-string v0, "FragmentActivity"

    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_62

    new-instance v0, Landroidj/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroidj/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    iput v2, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    :cond_62
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchCreate()V

    return-void

    :cond_68
    move-object v0, v1

    goto :goto_27

    :cond_6a
    new-instance v0, Landroidj/support/v4/util/SparseArrayCompat;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroidj/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    move v0, v2

    :goto_73
    array-length v4, v1

    if-ge v0, v4, :cond_55

    iget-object v4, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroidj/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_73
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_1a

    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroidj/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17

    :cond_1a
    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_17
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchDestroy()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->doLoaderDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onLowMemory()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    sparse-switch p1, :sswitch_data_1c

    const/4 v0, 0x0

    goto :goto_7

    :sswitch_d
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidj/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    :sswitch_14
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidj/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7

    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 3
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentController;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->noteStateNotSaved()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    packed-switch p1, :pswitch_data_e

    :goto_3
    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_7  #0x0
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p2}, Landroidj/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_3

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    const/4 v1, 0x2

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->onResumeFragments()V

    :cond_17
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchPause()V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 3
    .annotation build Landroidj/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0, p1}, Landroidj/support/v4/app/FragmentController;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method protected onPostResume()V
    .registers 3

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onPostResume()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->onResumeFragments()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->execPendingActions()Z

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    if-nez p1, :cond_1d

    if-eqz p3, :cond_1d

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Landroidj/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_11
    invoke-virtual {p0, p2, p3}, Landroidj/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v1, p3}, Landroidj/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_1c
    return v0

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_1c
.end method

.method onReallyStop()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    iget-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroidj/support/v4/app/FragmentController;->doLoaderStop(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchReallyStop()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 8
    .param p2  # [Ljava/lang/String;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [I
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    const v3, 0xffff

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    if-eqz v0, :cond_20

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroidj/support/v4/util/SparseArrayCompat;->remove(I)V

    if-nez v0, :cond_21

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v1, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroidj/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_42

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_42
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroidj/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_20
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onResume()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->execPendingActions()Z

    return-void
.end method

.method protected onResumeFragments()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchResume()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidj/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    :cond_8
    invoke-virtual {p0}, Landroidj/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->retainNestedNonConfig()Landroidj/support/v4/app/FragmentManagerNonConfig;

    move-result-object v2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroidj/support/v4/util/SimpleArrayMap;

    move-result-object v3

    if-nez v2, :cond_20

    if-nez v3, :cond_20

    if-nez v1, :cond_20

    const/4 v0, 0x0

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;

    invoke-direct {v0}, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    iput-object v1, v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    iput-object v2, v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Landroidj/support/v4/app/FragmentManagerNonConfig;

    iput-object v3, v0, Landroidj/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroidj/support/v4/util/SimpleArrayMap;

    goto :goto_1f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_10
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroidj/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_59

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroidj/support/v4/app/FragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroidj/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroidj/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_31
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroidj/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_4f

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mPendingFragmentActivityResults:Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_31

    :cond_4f
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_59
    return-void
.end method

.method protected onStart()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onStart()V

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStopped:Z

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mReallyStopped:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v0, :cond_19

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mCreated:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchActivityCreated()V

    :cond_19
    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->noteStateNotSaved()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->execPendingActions()Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->doLoaderStart()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchStart()V

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->reportLoaderStart()V

    return-void
.end method

.method public onStateNotSaved()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->noteStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroidj/support/v4/app/BaseFragmentActivityJB;->onStop()V

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mStopped:Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroidj/support/v4/app/FragmentActivity;->mFragments:Landroidj/support/v4/app/FragmentController;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentController;->dispatchStop()V

    return-void
.end method

.method requestPermissionsFromFragment(Landroidj/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_8

    invoke-static {p0, p2, p3}, Landroidj/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_7
    return-void

    :cond_8
    invoke-static {p3}, Landroidj/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    invoke-direct {p0, p1}, Landroidj/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroidj/support/v4/app/Fragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroidj/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_21

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    goto :goto_7

    :catchall_21
    move-exception v0

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v0
.end method

.method public setEnterSharedElementCallback(Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 2

    invoke-static {p0, p1}, Landroidj/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/SharedElementCallback;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroidj/support/v4/app/SharedElementCallback;)V
    .registers 2

    invoke-static {p0, p1}, Landroidj/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroidj/support/v4/app/SharedElementCallback;)V

    return-void
.end method

.method public final setSupportMediaController(Landroidj/support/v4/media/session/MediaControllerCompat;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Landroidj/support/v4/media/session/MediaControllerCompat;->setMediaController(Landroid/app/Activity;Landroidj/support/v4/media/session/MediaControllerCompat;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    invoke-static {p2}, Landroidj/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_a
    invoke-super {p0, p1, p2}, Landroidj/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidj/support/v4/app/BaseFragmentActivityJB;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidj/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 8
    .param p4  # Landroid/os/Bundle;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    if-ne p3, v1, :cond_e

    const/4 v0, -0x1

    :try_start_8
    invoke-static {p0, p2, v0, p4}, Landroidj/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_24

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    :goto_d
    return-void

    :cond_e
    :try_start_e
    invoke-static {p3}, Landroidj/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    invoke-direct {p0, p1}, Landroidj/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroidj/support/v4/app/Fragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroidj/support/v4/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_24

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    goto :goto_d

    :catchall_24
    move-exception v0

    iput-boolean v2, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedActivityFromFragment:Z

    throw v0
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .registers 7
    .param p3  # Landroid/content/Intent;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-super/range {p0 .. p6}, Landroidj/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8
    .param p3  # Landroid/content/Intent;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Landroidj/support/v4/app/BaseFragmentActivityJB;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidj/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p4  # Landroid/content/Intent;
        .annotation build Landroidj/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    const/4 v0, -0x1

    if-ne p3, v0, :cond_16

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    :try_start_f
    invoke-static/range {v0 .. v7}, Landroidj/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_36

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    :goto_15
    return-void

    :cond_16
    :try_start_16
    invoke-static {p3}, Landroidj/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    invoke-direct {p0, p1}, Landroidj/support/v4/app/FragmentActivity;->allocateRequestIndex(Landroidj/support/v4/app/Fragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroidj/support/v4/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_36

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    goto :goto_15

    :catchall_36
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidj/support/v4/app/FragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .registers 1

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    goto :goto_9
.end method

.method public supportPostponeEnterTransition()V
    .registers 1

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .registers 1

    invoke-static {p0}, Landroidj/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    invoke-static {p1}, Landroidj/support/v4/app/FragmentActivity;->checkForValidRequestCode(I)V

    :cond_a
    return-void
.end method
