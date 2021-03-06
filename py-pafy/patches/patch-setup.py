$NetBSD: patch-setup.py,v 1.1 2015/02/14 10:58:25 jihbed Exp $

--- setup.py.orig	2015-06-01 13:14:51.000000000 +0000
+++ setup.py
@@ -9,6 +9,8 @@ python setup.py sdist bdist_wheel
 
 """
 
+import sys
+
 try:
     from setuptools import setup
 
@@ -18,7 +20,7 @@ except ImportError:
 setup(
     name='pafy',
     packages=['pafy'],
-    scripts=['scripts/ytdl'],
+    scripts=['scripts/ytdl'+sys.version[0:3]],
     version='0.3.74',
     description="Retrieve YouTube content and metadata",
     keywords=["pafy", "API", "YouTube", "youtube", "download", "video"],
