.class Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassParserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;",
        ">;"
    }
.end annotation


# instance fields
.field bytes:[B

.field name:Ljava/lang/String;

.field final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[B)V
    .registers 4

    .line 1759
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1760
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->name:Ljava/lang/String;

    .line 1761
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[BLcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public call()Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1766
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->bytes:[B

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$mparseClass(Lcom/s1243808733/android/dx/command/dexer/Main;Ljava/lang/String;[B)Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1754
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$ClassParserTask;->call()Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    move-result-object v0

    return-object v0
.end method
