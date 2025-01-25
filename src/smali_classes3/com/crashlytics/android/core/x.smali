.class Lcom/crashlytics/android/core/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/util/Set;)V
    .registers 3

    iput-object p1, p0, Lcom/crashlytics/android/core/x;->DW:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/x;->j6:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x23

    if-ge p1, v1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Lcom/crashlytics/android/core/x;->j6:Ljava/util/Set;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
