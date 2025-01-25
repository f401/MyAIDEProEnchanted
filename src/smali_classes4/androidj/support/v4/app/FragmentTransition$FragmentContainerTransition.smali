.class Landroidj/support/v4/app/FragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/FragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Landroidj/support/v4/app/Fragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Landroidj/support/v4/app/BackStackRecord;

.field public lastIn:Landroidj/support/v4/app/Fragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Landroidj/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
