.class final Lcom/crashlytics/android/core/W$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/La$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/W;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/core/W;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/W$i;->j6:Lcom/crashlytics/android/core/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/W;Lcom/crashlytics/android/core/D;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/core/W$i;-><init>(Lcom/crashlytics/android/core/W;)V

    return-void
.end method


# virtual methods
.method public DW()[Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W$i;->j6:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->v5()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public FH()[Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W$i;->j6:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->gn()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public j6()[Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/core/W$i;->j6:Lcom/crashlytics/android/core/W;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/W;->u7()[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
