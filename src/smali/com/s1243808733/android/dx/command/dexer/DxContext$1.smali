.class Lcom/s1243808733/android/dx/command/dexer/DxContext$1;
.super Ljava/io/OutputStream;
.source "DxContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/DxContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/command/dexer/DxContext;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext$1;->this$0:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
