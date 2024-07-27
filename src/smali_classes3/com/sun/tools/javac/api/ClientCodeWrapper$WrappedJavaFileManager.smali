.class public Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;
.super Ljava/lang/Object;
.source "ClientCodeWrapper.java"

# interfaces
.implements Ljavax/tools/JavaFileManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WrappedJavaFileManager"
.end annotation


# instance fields
.field protected clientJavaFileManager:Ljavax/tools/JavaFileManager;

.field final this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/api/ClientCodeWrapper;Ljavax/tools/JavaFileManager;)V
    .registers 3

    .line 191
    iput-object p1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    iput-object p2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    .line 194
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0}, Ljavax/tools/JavaFileManager;->close()V
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 345
    :catch_1
    move-exception v0

    .line 346
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :catch_2
    move-exception v0

    .line 344
    throw v0
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0}, Ljavax/tools/JavaFileManager;->flush()V
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 332
    :catch_1
    move-exception v0

    .line 333
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 330
    :catch_2
    move-exception v0

    .line 331
    throw v0
.end method

.method public getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .registers 4

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Ljavax/tools/JavaFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 202
    :catch_1
    move-exception v0

    .line 203
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    :catch_2
    move-exception v0

    .line 201
    throw v0
.end method

.method public getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v1, p1, p2, p3}, Ljavax/tools/JavaFileManager;->getFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;)Ljavax/tools/FileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 306
    :catch_1
    move-exception v0

    .line 307
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 304
    :catch_2
    move-exception v0

    .line 305
    throw v0
.end method

.method public getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    iget-object v2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v2, p4}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Ljavax/tools/JavaFileManager;->getFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/lang/String;Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 319
    :catch_1
    move-exception v0

    .line 320
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 317
    :catch_2
    move-exception v0

    .line 318
    throw v0
.end method

.method public getJavaFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Ljavax/tools/JavaFileObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v1, p1, p2, p3}, Ljavax/tools/JavaFileManager;->getJavaFileForInput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    :catch_2
    move-exception v0

    .line 279
    throw v0
.end method

.method public getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    iget-object v2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v2, p4}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v2

    invoke-interface {v1, p1, p2, p3, v2}, Ljavax/tools/JavaFileManager;->getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :catch_1
    move-exception v0

    .line 294
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 291
    :catch_2
    move-exception v0

    .line 292
    throw v0
.end method

.method public handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1, p2}, Ljavax/tools/JavaFileManager;->handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 254
    :catch_1
    move-exception v0

    .line 255
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 252
    :catch_2
    move-exception v0

    .line 253
    throw v0
.end method

.method public hasLocation(Ljavax/tools/JavaFileManager$Location;)Z
    .registers 4

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Ljavax/tools/JavaFileManager;->hasLocation(Ljavax/tools/JavaFileManager$Location;)Z
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 267
    :catch_1
    move-exception v0

    .line 268
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 265
    :catch_2
    move-exception v0

    .line 266
    throw v0
.end method

.method public inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;
    .registers 5

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljavax/tools/JavaFileManager;->inferBinaryName(Ljavax/tools/JavaFileManager$Location;Ljavax/tools/JavaFileObject;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    :catch_1
    move-exception v0

    .line 229
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 226
    :catch_2
    move-exception v0

    .line 227
    throw v0
.end method

.method public isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z
    .registers 6

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->unwrap(Ljavax/tools/FileObject;)Ljavax/tools/FileObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/tools/JavaFileManager;->isSameFile(Ljavax/tools/FileObject;Ljavax/tools/FileObject;)Z
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 241
    :catch_1
    move-exception v0

    .line 242
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 239
    :catch_2
    move-exception v0

    .line 240
    throw v0
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .registers 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v0, p1}, Ljavax/tools/JavaFileManager;->isSupportedOption(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 358
    :catch_1
    move-exception v0

    .line 359
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 356
    :catch_2
    move-exception v0

    .line 357
    throw v0
.end method

.method public list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/tools/JavaFileManager$Location;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljavax/tools/JavaFileObject$Kind;",
            ">;Z)",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->this$0:Lcom/sun/tools/javac/api/ClientCodeWrapper;

    iget-object v1, p0, Lcom/sun/tools/javac/api/ClientCodeWrapper$WrappedJavaFileManager;->clientJavaFileManager:Ljavax/tools/JavaFileManager;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/tools/JavaFileManager;->list(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/api/ClientCodeWrapper;->wrapJavaFileObjects(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    :try_end_0
    .catch Lcom/sun/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    :catch_1
    move-exception v0

    .line 216
    new-instance v1, Lcom/sun/tools/javac/util/ClientCodeException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 213
    :catch_2
    move-exception v0

    .line 214
    throw v0
.end method
