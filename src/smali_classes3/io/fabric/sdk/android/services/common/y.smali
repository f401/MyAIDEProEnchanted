.class Lio/fabric/sdk/android/services/common/y;
.super Ljava/lang/Object;

# interfaces
.implements Lio/fabric/sdk/android/services/common/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/z;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/StringBuilder;

.field final FH:Lio/fabric/sdk/android/services/common/z;

.field j6:Z


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/z;Ljava/lang/StringBuilder;)V
    .registers 3

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/y;->FH:Lio/fabric/sdk/android/services/common/z;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/y;->DW:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/fabric/sdk/android/services/common/y;->j6:Z

    return-void
.end method


# virtual methods
.method public j6(Ljava/io/InputStream;I)V
    .registers 4

    iget-boolean p1, p0, Lio/fabric/sdk/android/services/common/y;->j6:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/fabric/sdk/android/services/common/y;->j6:Z

    goto :goto_f

    :cond_8
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/y;->DW:Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/y;->DW:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
