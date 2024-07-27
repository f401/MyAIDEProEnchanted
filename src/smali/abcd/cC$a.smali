.class Labcd/cC$a;
.super Labcd/cC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/cC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final j6:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Labcd/cC;-><init>()V

    iput-object p1, p0, Labcd/cC$a;->j6:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;Labcd/yE;)J
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/cC$a;->j6:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/cC$a;->j6:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Labcd/bC;

    invoke-direct {v1, p0, v0}, Labcd/bC;-><init>(Labcd/cC$a;Ljava/io/File;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
