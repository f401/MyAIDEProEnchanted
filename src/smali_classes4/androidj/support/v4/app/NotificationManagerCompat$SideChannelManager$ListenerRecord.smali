.class Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field public bound:Z

.field public final componentName:Landroid/content/ComponentName;

.field public retryCount:I

.field public service:Landroidj/support/v4/app/INotificationSideChannel;

.field public taskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroidj/support/v4/app/NotificationManagerCompat$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;

    iput v1, p0, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    iput-object p1, p0, Landroidj/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;

    return-void
.end method
