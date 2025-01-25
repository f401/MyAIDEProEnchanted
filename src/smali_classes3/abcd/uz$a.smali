.class Labcd/uz$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/uz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final DW:J

.field final j6:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/uz$a;->j6:Ljava/io/File;

    iput-wide p2, p0, Labcd/uz$a;->DW:J

    return-void
.end method
