.class Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;
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
    name = "DexWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final dexFile:Lcom/s1243808733/android/dx/dex/file/DexFile;

.field final this$0:Lcom/s1243808733/android/dx/command/dexer/Main;


# direct methods
.method private constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    .line 1965
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;->dexFile:Lcom/s1243808733/android/dx/dex/file/DexFile;

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;-><init>(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1961
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;->this$0:Lcom/s1243808733/android/dx/command/dexer/Main;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dexer/Main$DexWriter;->dexFile:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/command/dexer/Main;->-$$Nest$mwriteDex(Lcom/s1243808733/android/dx/command/dexer/Main;Lcom/s1243808733/android/dx/dex/file/DexFile;)[B

    move-result-object v0

    return-object v0
.end method
