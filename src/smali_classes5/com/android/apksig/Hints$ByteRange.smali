.class public final Lcom/android/apksig/Hints$ByteRange;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/Hints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteRange"
.end annotation


# instance fields
.field final end:J

.field final start:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/apksig/Hints$ByteRange;->start:J

    iput-wide p3, p0, Lcom/android/apksig/Hints$ByteRange;->end:J

    return-void
.end method
