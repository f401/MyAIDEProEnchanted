.class Lcom/s1243808733/android/dx/command/dexer/DxContext$100000000;
.super Ljava/io/OutputStream;
.source "DxContext.java"


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/command/dexer/DxContext;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/command/dexer/DxContext;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext$100000000;->this$0:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/command/dexer/DxContext$100000000;)Lcom/s1243808733/android/dx/command/dexer/DxContext;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/DxContext$100000000;->this$0:Lcom/s1243808733/android/dx/command/dexer/DxContext;

    return-object v0
.end method


# virtual methods
.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
