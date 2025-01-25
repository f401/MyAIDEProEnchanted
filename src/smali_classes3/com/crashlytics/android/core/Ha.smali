.class Lcom/crashlytics/android/core/Ha;
.super Ljava/lang/Object;

# interfaces
.implements Lio/fabric/sdk/android/services/common/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/Ia;->v5()Lcom/crashlytics/android/core/Ia$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:[I

.field final FH:Lcom/crashlytics/android/core/Ia;

.field final j6:[B


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/Ia;[B[I)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/core/Ha;->FH:Lcom/crashlytics/android/core/Ia;

    iput-object p2, p0, Lcom/crashlytics/android/core/Ha;->j6:[B

    iput-object p3, p0, Lcom/crashlytics/android/core/Ha;->DW:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/InputStream;I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/Ha;->j6:[B

    iget-object v1, p0, Lcom/crashlytics/android/core/Ha;->DW:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    iget-object v0, p0, Lcom/crashlytics/android/core/Ha;->DW:[I
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_15

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_15
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2
.end method
