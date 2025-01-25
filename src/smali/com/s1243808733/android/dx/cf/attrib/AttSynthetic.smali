.class public final Lcom/s1243808733/android/dx/cf/attrib/AttSynthetic;
.super Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;
.source "AttSynthetic.java"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Synthetic"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    const-string v0, "Synthetic"

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method
