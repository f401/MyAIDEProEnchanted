.class Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Landroidj/support/v4/content/ModernAsyncTask;


# direct methods
.method varargs constructor <init>(Landroidj/support/v4/content/ModernAsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/content/ModernAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mTask:Landroidj/support/v4/content/ModernAsyncTask;

    iput-object p2, p0, Landroidj/support/v4/content/ModernAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
