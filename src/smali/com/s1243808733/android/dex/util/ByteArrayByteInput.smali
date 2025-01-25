.class public final Lcom/s1243808733/android/dex/util/ByteArrayByteInput;
.super Ljava/lang/Object;
.source "ByteArrayByteInput.java"

# interfaces
.implements Lcom/s1243808733/android/dex/util/ByteInput;


# instance fields
.field private final bytes:[B

.field private position:I


# direct methods
.method public varargs constructor <init>([B)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;->bytes:[B

    return-void
.end method


# virtual methods
.method public readByte()B
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;->bytes:[B

    iget v1, p0, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;->position:I

    aget-byte v0, v0, v1

    return v0
.end method
