.class Landroidj/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/content/ContentResolverCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentResolverCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroidj/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 9

    if-eqz p7, :cond_5

    invoke-virtual {p7}, Landroidj/support/v4/os/CancellationSignal;->throwIfCanceled()V

    :cond_5
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
