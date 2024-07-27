.class public Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;
.super Ljava/io/DataInputStream;
.source "ByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/util/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDataInputStream"
.end annotation


# instance fields
.field private final wrapped:Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;)V
    .registers 2

    .line 359
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 361
    iput-object p1, p0, Lcom/s1243808733/android/dx/util/ByteArray$MyDataInputStream;->wrapped:Lcom/s1243808733/android/dx/util/ByteArray$MyInputStream;

    return-void
.end method
