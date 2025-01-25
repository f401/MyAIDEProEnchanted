.class Landroid/support/multidex/c$a;
.super Ljava/io/File;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/multidex/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public j6:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroid/support/multidex/c$a;->j6:J

    return-void
.end method
